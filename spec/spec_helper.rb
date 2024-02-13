require "rubygems"
require "bundler/setup"

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "simplecov"
require "rails"
require "active_record"

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

require "acts_as_shopping_cart"

SimpleCov.start

RSpec.configure do |config|
  config.mock_with :rspec
  config.raise_errors_for_deprecations!
end
