source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.13'

group :development do
  gem "quiet_assets", ">= 1.0.2"
  gem "figaro", ">= 0.6.3"
  gem "binding_of_caller", ">= 0.7.1", platforms: [:mri_19, :rbx]
  gem "better_errors", ">= 0.7.2"
  gem "hub", ">= 1.10.2", require: nil
  gem "mini_magick"
end
group :test do 
  gem "mini_magick"
end
gem 'sqlite3', group: [:development, :test]
group :production do
  gem 'pg'
  gem "sendgrid", ">= 1.0.1"
  gem "puma", ">= 1.6.3"
end
gem 'acts_as_commentable', '3.0.1'
gem 'carrierwave'
gem 'cloudinary'
gem 'best_in_place'
gem 'colorbox-rails', git: "git://github.com/MichaelWhi/colorbox-rails.git"
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-fileupload-rails'
end
gem 'jquery-rails'

gem "omniauth", ">= 1.1.3"
gem "omniauth-google-oauth2"
gem "simple_form", ">= 2.1.0"

gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem "parallel_tests", :group => [:development, :test]
gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "cucumber-rails", ">= 1.3.1", :group => :test, :require => false
gem "launchy", ">= 2.2.0", :group => :test
gem "capybara", ">= 2.0.3", :group => :test
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]