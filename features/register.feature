Feature: Register
	In order to work with my data
	As a user of the app
	I want to register with the app using my username/password

Scenario: Register
	Given User not registered
	And form contains user pass email data
	When form is submitted 
	And form is validated
	Then user/pass is saved to db as new user
	And user receives role and active status
	And user is sent email
