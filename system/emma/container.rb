ßrequire "dry/web/container"

module Emma
  class Container < Dry::Web::Container
    configure do
      config.name = :emma
      config.listeners = true
      config.default_namespace = "emma"
      config.auto_register = %w[lib/emma]
    end

    load_paths! "lib"
  end
end
