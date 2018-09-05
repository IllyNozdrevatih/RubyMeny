require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { 
  	described_class.new(
	  	email: "valid@mail.ru", encrypted_password: "$2a$11$3J/wK6acuPuVQhwSZyqZQufPKmtrZ93MPSTNnzkz.3YG9UhaMaPn.",
	  	created_at:DateTime.now , updated_at:DateTime.now , role: "admin"
  )}
  
  it "is valid without a email" do
  	subject.email = nil
  	expect(subject).to_not be_valid
  end	
  
  it "is valid with valid encrypted_password" do
  	subject.encrypted_password = nil
  	expect(subject).to_not be_valid
  end	

  it "is valid with valid created_at" do
  	subject.created_at = nil
  	expect(subject).to_not be_valid
  end	

  it "is valid with valid updated_at" do
  	subject.updated_at = nil
  	expect(subject).to_not be_valid
  end

  it "is valid with valid role" do
  	subject.role = nil
  	expect(subject).to_not be_valid
  end  		
end