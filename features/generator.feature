Feature: Generating things
  In order to generate some notes
  As a CLI
  I want to make a file to put notes in

  Scenario: Notes
    When I run "rubyhu note subject body"
    Then the following files should exist:
      | notes/subject.txt |
    Then the file "notes/subject.txt" should contain:
      """
      ###### NOTE ######
      body
      """

