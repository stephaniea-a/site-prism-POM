Given(/^I can access the BBC home page$/) do
  @Bbcwebsite = Bbcwebsite.new
  @Bbcwebsite.bbc_home_page.load
  @Bbcwebsite.bbc_home_page.displayed?
end

Then(/^I am able to select sign in$/) do
  @Bbcwebsite.bbc_home_page.has_sign_in_link?
  @Bbcwebsite.bbc_home_page.click_sign_in_link
end

When(/^I enter my login details$/) do
  @Bbcwebsite.bbc_sign_in_page.wait_for_username_field
  @Bbcwebsite.bbc_sign_in_page.enter_login_details
end

And(/^I click sign in$/) do
  @Bbcwebsite.bbc_sign_in_page.sign_in_button.click
end

Then(/^I have I have been signed in$/) do
  expect(page).to have_selector('#idcta-username', text: "Your account")
end




