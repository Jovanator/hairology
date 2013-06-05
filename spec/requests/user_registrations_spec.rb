require "spec_helper"

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Username",              :with => "Lauren N. Roth"
    fill_in "Email",                 :with => "monkeychippa@gmail.com"
    fill_in "Password",              :with => "spirit2634"
    fill_in "Password confirmation", :with => "spirit2634"

    click_button "Sign up"

    page.should have_content("Welcome! You have signed up successfully.")
  end
end
