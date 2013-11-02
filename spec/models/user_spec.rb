require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Essam Joubori", email: "essam.joubori@gmail.com")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

   describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end
   describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@gmail,com user_at_gmail.com user@gmail. user@gmail_at.com user@gmail+com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end
    describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@gmail.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
   before do
    user_with_same_email = @user.dup
    user_with_same_email.email = @user.email.upcase
    user_with_same_email.save
  end
  it { should_not be_valid}
end


end



