require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Hairology'" do
      visit '/static_pages/home'
      page.should have_content('Hairology')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "Explore page" do
    it "should have the content 'Explore'" do
      visit '/static_pages/explore'
      page.should have_content('Explore')
    end
  end

  describe "Profile page" do
    it "should have the content 'Profile'" do
      visit '/static_pages/profile'
      page.should have_content('Profile')
    end
  end
end
