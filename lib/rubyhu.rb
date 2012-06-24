require 'json'
require 'rubyhu/version'
require 'lib/hu_plugin'

dir = 'lib/plugins'
$LOAD_PATH.unshift(dir)
Dir[File.join(dir, '/**/hu_*.rb')].each {|file| require File.path(file)[4..-1] }

module Rubyhu
    def self.snapshot
      output = {:timestamp => Time.now}
      Rubyhu::Hu_Plugin.repository.each { |plugin|
        output.update(plugin.get_data)
      }
      return JSON.pretty_generate(output)
    end
end
