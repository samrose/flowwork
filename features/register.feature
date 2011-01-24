Feature: User Registration
	As an anonymous user of flowwork
	I want to be able register to the application
	annd I want to be logged in upon successful registration



Scenario Outline: Creating a new account
	Given I am not authenticated 
	When I am on the signup page 
	Then I should see "Sign up" 
	Then I fill in "user_email" with "<email>" 
	And I fill in "user_password" with "<password>" 
	And I fill in "user_password_confirmation" with "<password>" 
	And I press "user_submit"
	Then I should see "Welcome! You have signed up successfully."
  

    Examples:
      | email           | password   |
      | testing@man.net | secretpass |
      | foo@bar.com     | fr33z3     |

