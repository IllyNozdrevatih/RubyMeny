require 'rails_helper'

RSpec.describe Dish, :type => :model do
  subject { 
  	described_class.new(
	  	title: "Катлета кивская", weight: "200",
	  	  measure:"гр", price:15.2 , units: 0 ,
        category_id:2
  )}
  
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid without title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end 

  it "is valid without weight" do 
    subject.weight = nil
    expect(subject).to_not be_valid
  end 

  it "is valid without measure" do 
    subject.measure = nil
    expect(subject).to_not be_valid
  end

  it "is valid without price" do 
    subject.price = nil
    expect(subject).to_not be_valid
  end  

  it "is valid without units" do 
    subject.units = nil
    expect(subject).to be_valid
  end 

  it "is valid without category_id" do 
    subject.category_id = nil
    expect(subject).to_not be_valid
  end   
end