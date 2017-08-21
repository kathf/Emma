module Test
  module WebHelpers
    module_function

    def app
      EmmaWithRoda::Application.app
    end
  end
end
