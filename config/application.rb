require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module BrowntreeLabs
  class Application < Rails::Application
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end

    config.generators do |g|
      g.test_framework :rspec
    end

    config.active_record.raise_in_transactional_callbacks = true
    config.serve_static_files = true
  end
end
