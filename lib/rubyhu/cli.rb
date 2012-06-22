require 'thor'
require 'rubyhu'
require 'rubyhu/generators/note'

module Rubyhu
  class CLI < Thor
    desc "snap", "Takes a snapshot of the system, using every available plugin"
    def snap
      puts Rubyhu.snapshot
    end
    desc "note", "Takes a subject and a body and makes a note"
    def note(subject, body)
      Rubyhu::Generators::Note.start([subject,body])
    end
  end
end
