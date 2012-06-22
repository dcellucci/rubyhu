require 'thor/group'

module Rubyhu
  module Generators
    class Note < Thor::Group
      include Thor::Actions

      argument :subject, :type => :string
      argument :body, :type => :string

      def self.source_root
        File.dirname(__FILE__) + "/note"
      end

      def create_dir
        empty_directory("notes")
      end

      def pass_note
        template("note.txt", "notes/#{subject}.txt")
      end
    end
  end
end
