require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Hairology'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Hairology')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Hairology")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

=begin
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Help" )
    end
  end

  describe "Explore page" do
    it "should have the content 'Explore'" do
      visit '/static_pages/explore'
      page.should have_content('Explore')
    end

    it "should have the title 'Explore'" do
      visit '/static_pages/explore'
      page.should have_selector('title', :text => "Explore" )
    end
  end

  describe "Profile page" do
    it "should have the content 'Profile'" do
      visit '/static_pages/profile'
      page.should have_content('Profile')
    end

    it "should have the title 'Profile'" do
      visit '/static_pages/profile'
      page.should have_selector('title', :text => "Profile" )
    end
=end
end
