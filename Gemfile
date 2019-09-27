source "https://rubygems.org"

ruby "2.5.0"

gem "rails", "~> 5.1.5"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.7"
gem "bcrypt", "~> 3.1.7"
gem "rack-cors"
gem "jbuilder"
gem "knock"
gem "httparty"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails"
end

group :development do
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "factory_bot_rails"
  gem "shoulda-matchers"
  gem "database_cleaner"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
