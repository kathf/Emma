require "recorder/view/controller"

module Recorder
  module Views
    class Welcome < Recorder::View::Controller
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
