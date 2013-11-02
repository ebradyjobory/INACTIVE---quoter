require 'spec_helper'

describe "UserPages" do
  describe "Sign up page" do
    it "should have the word Sign up" do
      visit signup_path
      expect(page).to have_content('Sign up')
    end
  end
end

describe "UserPages" do
  describe "Sign up page" do
    it "should have the right title" do
      visit signup_path
      expect(page).to have_title('Sign up')
    end
  end
end
