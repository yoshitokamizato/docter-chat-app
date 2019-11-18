class UsersController < ApplicationController

  def new
    @user = MedicalExamination.new
  end

  def create
   MedicalExamination.create(user_params)
 end

 private
  def user_params
    params.require(:user).permit(:user_id, :weight, :body_temp, :systolic_bp, :diastorlic_bp, :memo)
  end
end
