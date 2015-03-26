Rails.application.routes.draw do
  
  root 'visitors#index'

  devise_for  :users, path: "account", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'create' }, controllers: { registrations: 'registrations'}

  resource :media_collection, path: "my_collection", except: [:new] do
    get 'new_item', on: :member
    post 'create_item', on: :member
  end

  get 'shared/:id', to: 'visitors#show', as: "shared_collection"
end
