require "pathname"
require "dry/web/container"

module Recorder
  class Container < Dry::Web::Container
    require root.join("system/emma/container")
    import core: Emma::Container

    configure do |config|
      config.root = Pathname(__FILE__).join("../..").realpath.dirname.freeze
      config.logger = Emma::Container[:logger]
      config.default_namespace = "recorder"
      config.auto_register = %w[lib/recorder]
    end

    load_paths! "lib"
  end
end
