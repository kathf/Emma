module Test
  module DatabaseHelpers
    module_function

    def rom
      Emma::Container["persistence.rom"]
    end

    def db
      Emma::Container["persistence.db"]
    end
  end
end
