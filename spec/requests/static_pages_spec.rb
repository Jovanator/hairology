require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'Hairology') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Help page" do
    before { visit help_path } 

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Profile page" do
    before { visit profile_path } 

    it { should have_selector('h1',    text: 'Profile') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Explore" do
    before { visit explore_path } 

    it { should have_selector('h1',    text: 'Explore') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Contact" do
    before { visit contact_path }
    
    it { should have_selector('h1', text: 'Contact') } 
    it { should have_selector('title', text: full_title('')) }
  end
end
