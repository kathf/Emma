module Test
  module DatabaseHelpers
    module_function

    def rom
      EmmaWithRoda::Container["persistence.rom"]
    end

    def db
      EmmaWithRoda::Container["persistence.db"]
    end
  end
end
