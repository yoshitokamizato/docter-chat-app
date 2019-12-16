class MedicalExaminationController < ApplicationController

  def index
    @user = User.find_by(id:current_user.id)
    gon.labels = ["1月","2月","3月","4月","5月","6月"]
    gon.data  =  MedicalExamination.where(user_id: @user).pluck(:weight).to_a
    @medical_examinations = MedicalExamination.all
  end

  def new
    gon.labels = ["1月","2月","3月","4月","5月","6月"]
    gon.data = [10,11,12,13,14,15]
    @medical_examination= MedicalExamination.new
  end

  def create
    @medical_examination = MedicalExamination.new(medical_params)
    if @medical_examination.save
      redirect_to action: :index
    end
  end

  def edit
  end

  def show
  end
  
  def update
  end
  
  def destroy
  end

  def medical_params
    params.require(:medical_examination).permit(:weight,:body_temp,:systolic_bp,:diastorlic_bp,:height).merge(user_id: current_user.id)
  end
end
