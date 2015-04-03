source "https://rubygems.org"

ruby "2.2.0"

gem "airbrake"                     #
gem 'bootstrap-sass', '~> 3.3.4'   #            
gem "coffee-rails", "~> 4.1.0"     # 
gem "cocoon"                       #
gem 'clrs'                         #  
gem 'ffaker'                       # 
gem "font-awesome-rails"           #                    
gem "haml-rails"                   #      
gem "delayed_job_active_record"    #    ~Suspenders/Bootstrap                    
gem "email_validator"              #     /Common gems and others       
gem "flutie"                       #  
gem "high_voltage"                 #        
gem "i18n-tasks"                   #      
gem "jquery-rails"                 #               
gem "newrelic_rpm"                 #       
gem "normalize-rails", "~> 3.0.0"  #
gem "populate"                     #                       
gem "rack-timeout"                 #        
gem "rails", "4.2.0"               #          
gem "recipient_interceptor"        #                  
gem "sass-rails", "~> 5.0"         #                
gem "simple_form"                  #       
gem "title"                        # 
gem "uglifier"                     #    
gem "unicorn"                      #   
gem 'rack-mini-profiler'

##### CACHING #####
gem "dalli"
gem 'rack-cache'


##### TURBOLINKS PLEASE #####
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'nprogress-rails'

##### AUTH #####
gem "devise"

##### Photos #####
gem "paperclip", "~> 4.2"


group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
  gem 'rails_layout'
  gem 'annotate', '~> 2.6.6'
  gem 'quiet_assets'
  gem "bullet"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.1.0"
  gem "sqlite3"
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  #gem "rails_stdout_logging"
  gem "memcachier"
  gem "rails_12factor"
  gem "pg"
end
