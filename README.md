# Приложение Mediatest 
### Тестовое задание для Eduson.tv
##### https://mediatest-staging.herokuapp.com/

####Задача: 
>Необходимо реализовать медиа-коллекцию пользователя, состоящую из ссылок и картинок. 
>Пользователь может войти, выйти, добавить что-то в коллекцию и поделиться ссылкой на коллекцию. 
>Приложение должно быть оттестировано, используя Rspec. 
>Все непонятные моменты можно решить на свое усмотрение и не забыть указать это.

---
* `/my_collection` - просмотр собственной коллекции
* `/my_collection/edit` - редактирование собственной коллекции
* `/my_collection/new_item` - добавление новог элемента к собственной коллекции.
* `/` - все расшаренные коллекции
* `/shared/:id` - публичная ссылка на расшаренную коллекию.

---
При выполнении использованы:

  * Rails 4.2
  * стартовый шаблон [Suspenders](https://github.com/thoughtbot/suspenders)
  * Bootstrap 3 
  * Devise
  * Paperclip
  * etc..

---

## Подробности
###### Я настоятельно рекомендую полазить на работающем приложении на Heroku и заглянуть в исходный код, вместо чтения всего ниженаписанного. 

На сайте есть пользователи `class User`.
Каждый пользователь `has_one` коллекцию `class MediaCollection`.
Каждая коллекция `has_many` элементов `class Item`.

За авторизацию отвечает гем Devise. После первичной регистрации пользователь перенаправляется на страницу редактирования своей, только что созданной, коллекции. Пока коллекция не будет сохранена - к ней невозможно добавить элементы или просмотреть ее.

Элементы к коллекции можно добавить как в разделе редактирования самой коллекции (гем Cocoon), так и по одному, в разделе добавления элемента (Add Item). Для этого добавлены методы `new_item` и `create_item` к `MediaCollectionsController`. 

Каждый пользователь имеет доступ только к своей коллекции, разграничение прав основано на методе `current_user`, предоставляемом гемом Devise:

    def set_media_collection
      @media_collection = current_user.media_collection
    end

В разделе редактирования коллекции пользователь может расшарить свою коллекцию - сделать ее публичной. Тогда коллекция будет отображаться на главной странице, к ней будут иметь доступ в том числе и незарегестрированные пользователи. 
  
    scope :shared, -> { where(shared: true) }
    ...
    @shared_collections = MediaCollection.preload(:user).shared

---

Элемент коллекции состоит из названия ссылки `:title` и тела `:body`. Тело ссылки проходит валидацию на соответствие регулярному выражению из ruby-библиотеки `uri`. При желании пользователь может загрузить картинку вдобавок к ссылке. Для работы с изображениями используется гем Paperclip.

---

Приложение демонстрационное и выполнено в короткий срок. Есть что отрефакторить, есть что добавить. При необходимости, это можно обсудить вживую. 

#### Кеширование
memcached, dalli
Немного russian-doll кеширования в Visitors представлениях. 

#### Тестирование

Большое-большое белое пятно. Тестирования пока что нет. Есть солидарность и медитирование над статьей: [Тестирование в стиле TSA](http://habrahabr.ru/post/143616/)