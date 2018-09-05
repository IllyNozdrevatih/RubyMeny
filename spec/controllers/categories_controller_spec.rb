require 'rails_helper'

RSpec.describe CategoriesController, :type => :controller do
	describe "GET category#index" do
		context "when the user is sign_in" do 
			it "returns 10 category" do
				user = create(:user)
				sign_in(user)				
				category = create_list(:category,10)
				visit categories_path
				expect(category.count).to eq(10)	
			end	
		end
	end		

	describe "GET category#show"
		context "when the user is sign_in"	do 
			it "returns a success response" do
				user = create(:user)
				sign_in(user)
				category = create(:category)
				get :show , params: { id: category}
				expect(response).to be_success	
			end	
		end

	describe "DELETE category#destroy" do
		context "when the user is sign_in"	do
			it "returns a success response" do
				user = create(:user)
				sign_in(user) 
				category = create(:category)
				expect {  delete :destroy, params: { id: Category.last.id } }.to change(Category, :count).by(-1)
			end	
		end
	end			
end