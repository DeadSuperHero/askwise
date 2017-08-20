require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Askwise
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    Raven.configure do |config|
      config.dsn = 'https://7d431900eb914e6b8069d9f950f831de:d27ec41ef37f4040859790851689824c@sentry.io/205988'
      config.filter_parameters << :password
    end

  end
end
