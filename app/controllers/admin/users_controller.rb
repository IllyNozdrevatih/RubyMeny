class Admin::UsersController < Admin::BaseController
	before_action :find_user , only: [:destroy]

	def index
		@users = User.all
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
end