require 'thor'
require 'rubyhu'

module Rubyhu
  class CLI < Thor
    desc "snap", "Takes a snapshot of the system, using every available plugin"
    def snap
      puts Rubyhu.snapshot
    end
  end
end
