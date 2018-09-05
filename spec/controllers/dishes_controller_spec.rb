require 'rails_helper'

RSpec.describe DishesController, :type => :controller do
	 context "when the dishes is an user" do
		describe "GET dishes#index" do
			context "when user is sign_in" do		
				it "returns 10 dishes" do
					user = create(:user)
					sign_in(user)
			      	dishes = create_list(:dish,10)
			      	get :index
				    expect(dishes.count).to eq(10)
			    end  
			end

			describe "GET dish#show" do
				context "when user is sign_in" do
	  				it "should render dish#show template" do
					    user = create(:user)
					    dish = create(:dish)
					    sign_in(user)
					    get :show , params: { id: dish}
					    expect(response).to be_success	
	  				end
	  			end	
			end

			describe "DELETE dishes#destroy" do
				context "when user is sign_in" do
					it "delete new dish" do
						user = create(:user)
						sign_in(user) 
				    	dish = create(:dish)
						expect {  delete :destroy, params: { id: Dish.last.id } }.to change(Dish, :count).by(-1)
				  	end
				end  	
			end	 				    
		end	
	end	
end