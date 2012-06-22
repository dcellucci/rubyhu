require "rubyhu/version"
require "lib/hu_plugin"

dir = 'lib/plugins'
$LOAD_PATH.unshift(dir)
Dir[File.join(dir, 'hu_*.rb')].each {|file| require File.basename(file) }

module Rubyhu
    def self.snapshot
      output = ""
      Rubyhu::Hu_Plugin.repository.each { |plugin|
        output = output + plugin.get_data
      }
      return output
    end
end
