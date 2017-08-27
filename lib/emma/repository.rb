# auto_register: false

require "rom-repository"
require "emma/container"
require "emma/import"

Emma::Container.boot! :rom

module Emma
  class Repository < ROM::Repository::Root
    include Emma::Import.args["persistence.rom"]
  end
end
