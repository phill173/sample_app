require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "PhillNet" }

	describe "Home Page" do

	  	it "Should have the base title" do
		  	visit '/static_pages/home'
		  	expect(page).to have_title("PhillNet")
		end

	    it "Should have the content 'Sample App" do
	      visit '/static_pages/home'
	      expect(page).to have_content('Sample App')
	    end

	    it "should not have the custom title " do
	    	visit '/static_pages/home'
	    	expect(page).not_to have_title('| Home')
	    end
	end

  describe "Help Page" do


	it "Should have the right title" do
	  	visit '/static_pages/help'
	  	expect(page).to have_title("PhillNet | Help")
	end


    it "Should have the content 'Help" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About Page" do

	it "Should have the right title" do
	  	visit '/static_pages/about'
	  	expect(page).to have_title("PhillNet | About")
	end



    it "Should have the content 'About Us" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact Page"

  	it "Should have the right title" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("PhillNet | Contact Us")
  	end

end
