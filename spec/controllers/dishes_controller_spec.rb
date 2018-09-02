require 'rails_helper'

describe "GET dishes#index" , type: :controller do

  context "when the user is an user" do		
		it "should list emailes of all name" do
			user = FactoryBot.create(:user)
			login_as :user
	 		visit dishes_path
	 		dishes = create(:dish,10)
	 		dishes.each do |dish|
	 			page.should have_content(dish.name)
	 		end	
		end
	end	
end