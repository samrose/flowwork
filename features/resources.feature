Feature: Resource Descriptions
	As a user of flowwork
	I want to be able to view existing resources
	and I want to be able to create new resources

Scenario: Show resources

	Given an anonymous user
	When I visit /resources
	Then I should see "Listing resources"
