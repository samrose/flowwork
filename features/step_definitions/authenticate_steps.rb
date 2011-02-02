Given /^that a confirmed user exists$/ do
 	Factory.create(:minimal_user)
end
Given /^I am at the login page$/ do
 visit path_to('the login page')
end
When /^I am not yet logged in$/ do
if defined?(Spec::Rails::Matchers)
    page.should have_content('Sign in')
  else
    assert page.has_content?('Sign in')
  end
end

