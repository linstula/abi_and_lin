ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
Dir[Rails.root.join('test/config/**/*.rb')].each {|f| require f}
require 'rails/test_help'
require 'minitest/pride'
require 'fivemat/minitest'


class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  fixtures :all
end
