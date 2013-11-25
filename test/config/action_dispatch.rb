require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist_debug do |app|
  Capybara::Poltergeist::Driver.new(app, inspector: true, js_errors: false)
end

Capybara.javascript_driver = :poltergeist_debug

class ActionDispatch::IntegrationTest
  Capybara.current_driver = Capybara.javascript_driver

  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
end
