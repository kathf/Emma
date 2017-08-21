require "pathname"
require "dry/web/container"

module Scheduler
  class Container < Dry::Web::Container
    require root.join("system/emma_with_roda/container")
    import core: EmmaWithRoda::Container

    configure do |config|
      config.root = Pathname(__FILE__).join("../..").realpath.dirname.freeze
      config.logger = EmmaWithRoda::Container[:logger]
      config.default_namespace = "scheduler"
      config.auto_register = %w[lib/scheduler]
    end

    load_paths! "lib"
  end
end
