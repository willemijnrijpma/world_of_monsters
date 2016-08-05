require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WorldOfMonsters
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    console do
      ActiveRecord::Base.connection
    end
  end
end
