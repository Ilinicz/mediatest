namespace :db do
  desc "Populating database"
  task populate: :environment do
    [User, MediaCollection, Item].each(&:delete_all)
    make_users
    make_media_collections
    make_items
  end
end

def make_users
  10.times do 
    email = FFaker::Internet.email
    password = 'password'
    User.create!(
      email: email,
      password: password,
      password_confirmation: password
      )
  end
end

def make_media_collections
  users = User.all
  users.each do |user| 
    title = FFaker::Lorem.word.capitalize
    description = FFaker::Lorem.sentence(1)
    shared = true
    MediaCollection.create!(
      user_id: user.id,
      title: title,
      description: description,
      shared: shared
      )
  end
end

def make_items
  mcs = MediaCollection.all
  5.times do
    mcs.each do |mc|
      title = FFaker::Lorem.sentence(word_count=1)
      body = FFaker::Internet.http_url
      mc.items.create!(title: title, body: body )
    end
  end
end