source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.1.5'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'mandrill_mailer'

gem 'google-tag-manager-rails'

gem 'activeadmin', github: 'gregbell/active_admin'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


gem 'bootstrap-sass'
gem 'devise'
gem 'figaro', '>= 1.0.0.rc1'
gem 'high_voltage'
gem 'simple_form'
gem 'upmin-admin'
gem 'acts_as_votable', '~> 0.10.0'
gem 'thumbs_up', git: 'https://github.com/bouchard/thumbs_up.git', ref: 'f499a7'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_layout'
end

group :development, :test do
  gem 'rubocop'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
