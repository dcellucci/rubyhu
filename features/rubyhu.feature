Feature: Rubyhu
	In order to snapshot rubyhu
	As a CLI
	I want to be as objective as possible
	
	Scenario: I take a snapshot
		When I run "rubyhu snap"
		Then the output should contain "Power"
		