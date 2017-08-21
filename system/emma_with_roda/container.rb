require "dry/web/container"

module EmmaWithRoda
  class Container < Dry::Web::Container
    configure do
      config.name = :emma_with_roda
      config.listeners = true
      config.default_namespace = "emma_with_roda"
      config.auto_register = %w[lib/emma_with_roda]
    end

    load_paths! "lib"
  end
end
