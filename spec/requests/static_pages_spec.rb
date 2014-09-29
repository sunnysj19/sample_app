require 'spec_helper'

describe "Static pages" do

describe "Home page" do
it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
end

describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
      expect(page).to have_title('help')
    end
  end

describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
      expect(page).to have_title('about')
    end
  end
end
