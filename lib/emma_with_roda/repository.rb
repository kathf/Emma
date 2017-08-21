# auto_register: false

require "rom-repository"
require "emma_with_roda/container"
require "emma_with_roda/import"

EmmaWithRoda::Container.boot! :rom

module EmmaWithRoda
  class Repository < ROM::Repository::Root
    include EmmaWithRoda::Import.args["persistence.rom"]
  end
end
