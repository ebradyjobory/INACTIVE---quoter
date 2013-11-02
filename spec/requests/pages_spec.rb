require 'spec_helper'

describe "Pages" do

  

  describe "Home" do
    before {visit root_path}
    it "should have the word Home" do
      expect(page).to have_content ('Home')
    end
    it "should not have custom title" do
      visit root_path
      expect(page).not_to have_title ('| Home')
    end
  end

  describe "About" do
    before {visit about_path}
    it "should have the word About" do
      expect(page).to have_content ('About')
    end
    it "should have the right title" do
      expect(page).to have_title ('About')
    end
  end















end





















