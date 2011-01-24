Feature: User Registration
	As an anonymous user of flowwork
	I want to be able register to the application
	annd I want to be logged in upon successful registration



Scenario Outline: Creating a new account
	Given I am not authenticated 
	When I am on the signup page 
	Then I should see "Sign up" 
	Then I fill in "user_email" with "<email>" 
	And I fill in "password" with "<password>" 
	And I fill in "password_confirmation" with "<password>" 
	And I press "Sign Up"
	Then I should see "Login successful"
  

    Examples:
      | email           | password   |
      | testing@man.net | secretpass |
      | foo@bar.com     | fr33z3     |

