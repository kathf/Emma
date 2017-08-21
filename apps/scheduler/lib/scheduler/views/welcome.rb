require "scheduler/view/controller"

module Scheduler
  module Views
    class Welcome < Scheduler::View::Controller
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
