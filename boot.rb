require "sinatra"

APP_ROOT = File.dirname(__FILE__)

Dir[File.join(APP_ROOT, "config", "initializers", "*.rb")].each { |file| require file }

require_relative "app/controllers/application_controller"

Dir[File.join(APP_ROOT, "app", "controllers", "*.rb")].each { |file| require file }
Dir[File.join(APP_ROOT, "app", "models", "*.rb")].each { |file| require file }
