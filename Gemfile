source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'jquery-rails'

gem 'heroku'

group :assets do
	gem 'sass'
end

group :production do
  gem 'pg'
end

group :development, :test do
	# To use debugger
	# gem 'ruby-debug19', :require => 'ruby-debug'

  # Pretty printed test output
  # gem 'turn', '0.8.2', :require => false
  gem 'sqlite3'

  gem 'ZenTest'
  gem 'autotest-rails'

  if RUBY_PLATFORM =~ /darwin/i
    gem 'autotest-growl'
    gem 'autotest-fsevent', :require => false
  elsif RUBY_PLATFORM =~ /linux/i
    gem "libnotify"
    gem "rb-inotify"
  end
end
