require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Unter
  class Application < Rails::Application

    config.load_defaults 6.0

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
      generate.system_tests = nil
    end
  end
end
