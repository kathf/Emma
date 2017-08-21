EmmaWithRoda::Container.finalize :settings do |container|
  init do
    require "emma_with_roda/settings"
  end

  start do
    settings = EmmaWithRoda::Settings.load(container.config.root, container.config.env)
    container.register "settings", settings
  end
end
