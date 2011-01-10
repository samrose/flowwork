Feature: Register
	In order to work with my data
	As a user of the app
	I want to register with the app using my username/password

Scenario: Register
	Given User not registered
	When form is submitted 
	And username email password are validated
	Then user is saved to db as new user
	And user receives role and active status
	And user is sent email
