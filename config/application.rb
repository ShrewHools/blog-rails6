require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlogRails6
  class Application < Rails::Application
    config.load_defaults 6.1
    config.i18n.default_locale = :en

    config.autoload_paths += %W(#{Rails.root}/app/models/ar)
  end
end
