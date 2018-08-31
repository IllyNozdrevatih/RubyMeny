class Admin::BaseController < ApplicationController
	before_action :ensure_admin_user
	
	def ensure_admin_user
		if current_user.role == 'user'
			redirect_to daily_menus_path , danger: 'Нет доступа' 	
		end
	end
end