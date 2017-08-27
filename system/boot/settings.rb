Emma::Container.finalize :settings do |container|
  init do
    require "emma/settings"
  end

  start do
    settings = Emma::Settings.load(container.config.root, container.config.env)
    container.register "settings", settings
  end
end
