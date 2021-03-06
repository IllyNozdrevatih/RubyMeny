class Admin::UsersController < Admin::BaseController
	before_action :find_user , only: [:edit,:update ,:show ,:destroy]

	def index
		@users = User.all
	end
	def new 
		@user = User.new
	end	

	def create
		@user = User.new(user_params)
		if @user.save
		  	redirect_to admin_users_path , success: 'Пользователь создан'
		else
		   	render :new , danger: 'Ошибка'
		end
	end
	def edit
			
	end	

	def update
		if @user.update(user_params)
			redirect_to admin_users_path , success: 'Пользователь изменен'
		else
			render :edit , danger: 'Ошибка'
		end	
	end 

	def destroy
		if current_user.id === request['id'].to_i
			redirect_to admin_users_path , danger: 'Ошбика , невозможно удалить'
		else
			@user.destroy
			redirect_to admin_users_path , success: 'Пользователь удален'
		end	
	end	

	private
	def find_user
		@user = User.find(params[:id])
	end
	def user_params
		params[:user].permit(:email,:password,:role)
	end	
end