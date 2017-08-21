begin
  require "pry-byebug"
rescue LoadError
end

require_relative "emma_with_roda/container"

EmmaWithRoda::Container.finalize!

# Load sub-apps
app_paths = Pathname(__FILE__).dirname.join("../apps").realpath.join("*")
Dir[app_paths].each do |f|
  require "#{f}/system/boot"
end

require "emma_with_roda/application"
