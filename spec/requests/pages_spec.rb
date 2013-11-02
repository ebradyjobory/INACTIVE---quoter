require 'spec_helper'

describe "Pages" do

  describe "Home" do
    it "should have the word Home" do
      visit root_path
      expect(page).to have_content ('Home')
    end
  end

describe "Pages" do

  describe "About" do
    it "should have the word About" do
      visit about_path
      expect(page).to have_content ('About')
    end
  end
end


describe "Pages" do  

  describe "page title" do
    it "should have the right title" do
      visit about_path
      expect(page).to have_title ('About')
    end
  end
end

describe "Pages" do  

  describe "custom title" do
    it "should not have custom title" do
      visit root_path
      expect(page).not_to have_title ('| Home')
    end
  end
end














end





















