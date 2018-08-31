require 'rails_helper'
describe 'Taking a course',:type => :feature do

  let!(:user) { {email: "noz2203@mail.ru", password: "noz2203@mail.ru"} }

  before(:each) do
    login("noz2203@mail.ru", "noz2203@mail.ru")
  end
    it ".authenticate" do
    expect(page).to have_content "Расписание"
  end
  
  def login(email, password)
	visit "/dishes/new"
	click_link "Sign up"
	fill_in :user_email, with: email
	fill_in :user_password, with: password
	click_button "Sign up"
  end
  
end