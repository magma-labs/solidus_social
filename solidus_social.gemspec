lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_social/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_social'
  s.version     = SolidusSocial.version
  s.summary     = 'Adds social network login services (OAuth) to Spree'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author   = 'John Dyer'
  s.email    = 'jdyer@spreecommerce.com'
  s.homepage = 'http://www.spreecommerce.com'
  s.license  = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'solidus_core', [">= 1.0", "< 3"]
  s.add_runtime_dependency 'solidus_auth_devise'
  s.add_runtime_dependency 'omniauth'
  s.add_runtime_dependency 'oa-core'
  s.add_runtime_dependency 'omniauth-twitter'
  s.add_runtime_dependency 'omniauth-facebook'
  s.add_runtime_dependency 'omniauth-github'
  s.add_runtime_dependency 'omniauth-google-oauth2'
  s.add_runtime_dependency 'omniauth-amazon'

  s.add_development_dependency 'capybara', '~> 2.11.0'
  s.add_development_dependency 'database_cleaner', '1.5.3'
  s.add_development_dependency 'rspec-rails', '~> 3.5.2'
  s.add_development_dependency 'factory_girl', '~> 4.8'
  s.add_development_dependency 'selenium-webdriver', '>= 3.0.4'
  s.add_development_dependency 'poltergeist', '~> 1.12.0'
  s.add_development_dependency 'simplecov', '~> 0.12.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.12'
  s.add_development_dependency 'rubocop', '~> 0.46.0'
  s.add_development_dependency 'rake', '~> 12'
end
