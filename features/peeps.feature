Feature: Peeps

	Scenario: Listing peeps
		Given there are a bunch of peeps
		When I visit chitter
		Then i should see those peeps
