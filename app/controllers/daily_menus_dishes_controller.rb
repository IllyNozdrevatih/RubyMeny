class DailyMenusDishesController < ApplicationController
  def destroy
    @relation = DailyMenusDish.find(params[:daily_menu_id])
    @relation.delete
    redirect_to edit_daily_menu_path
  end
end
