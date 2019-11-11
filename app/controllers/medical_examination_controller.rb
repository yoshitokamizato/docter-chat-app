class MedicalExaminationController < ApplicationController

  def index
    sum = 0
    gon.bardata = []
    gon.linedata = []
    6.times do |i|
      data = rand(100.0)
      gon.bardata << data
      sum = sum + data
      gon.linedata << sum
    end

    @medical_exams = MedicalExamination.all
  end

  def new
    @medical_exam = MedicalExamination.new
  end

  def create
    @medical_exam = MedicalExamination.new(medical_params)
    @medical_exam.user_id = current_user.id
    if @medical_exam.save
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
    params.require(:medical_examination).permit(:weight,:body_temp,:systolic_bp,:diastorlic_bp)
  end
end
