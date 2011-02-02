Given /^that a confirmed user exists$/ do
 	Factory.create(:minimal_user)
end

Given /^I am at the login page$/ do
  visit path_to('the login page')
end

Given /^I am logged in$/ do
  if defined?(Spec::Rails::Matchers)
    page.should have_content('signed in as')
  else
    assert page.has_content?('Sign in')
  end
end

Given /^I am not logged in$/ do
  if defined?(Spec::Rails::Matchers)
    page.should have_content('Sign in')
  else
    assert page.has_content?('Sign in')
  end
end


