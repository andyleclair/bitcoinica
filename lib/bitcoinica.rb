require 'active_resource'
require 'bitcoinica/connection'
require 'bitcoinica/quote'

require 'net/http'
module Net
  class HTTP
    def self.enable_debug!
      class << self
        alias_method :__new__, :new
        def new(*args, &blk)
          instance = __new__(*args, &blk)
          instance.set_debug_output($stderr)
          instance
        end
      end
    end

    def self.disable_debug!
      class << self
        alias_method :new, :__new__
        remove_method :__new__
      end
    end
  end
end
