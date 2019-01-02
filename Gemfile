source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "jbuilder", "~> 2.5"
gem "pg", ">= 0.18", "< 2.0"
gem "devise"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.1", ">= 5.2.1.1"
gem "rails-erd"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "awesome_print"
  gem "better_errors"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "draft_generators", github: "firstdraft/draft_generators"
  gem "pry-rails"
end

group :development do
  gem "annotate"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
