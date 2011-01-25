Given /^that a confirmed user exists$/ do
 	Factory.create(:minimal_user)
end
Given /^I am logged in$/ do
 visit path_to('the login page')
  fill_in('user_email', :with => 'minimal@example.com')
  fill_in('user_password', :with => 'test1234')
  click_button('Sign in')
  if defined?(Spec::Rails::Matchers)
    page.should have_content('Signed in as')
  else
    assert page.has_content?('Signed in as')
  end
end
