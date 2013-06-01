require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Hairology'" do
      visit '/static_pages/home'
      page.should have_content('Hairology')
    end
  end
end
