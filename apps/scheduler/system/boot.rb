require_relative "scheduler/container"

Scheduler::Container.finalize!

require "scheduler/application"
