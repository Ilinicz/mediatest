#if Rails.env.development? || Rails.env.test?
#  require "factory_girl"
#  namespace :dev do
#    desc "Seed data for development environment"
#    task prime: "db:setup" do
#      include FactoryGirl::Syntax::Methods
#
#      #20.times do
#      #  create(:user, email: Ffaker::Internet.email, password: "password")
#      #end
#    end
#  end
#end
