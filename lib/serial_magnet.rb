require 'dish'
require 'byebug'
require 'require_all'
spec = Gem::Specification.find_by_name("serial_magnet")
gem_root = spec.gem_dir
require_all "#{gem_root}/lib/serial_magnet/**/*.rb"

module SerialMagnet
  extend SerialMagnet::Config

  class << self
    def new(options={})
      SerialMagnet::Client.new(options)
    end
  end

end
