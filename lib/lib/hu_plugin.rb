require 'lib/plugin'

module Rubyhu
  class Hu_Plugin
    include Plugin
  
    def self.get_data
      raise NotImplementedError.new('Not ready yet.')
    end
  end
end