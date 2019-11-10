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
    
  end

  def new
    @medical_exam = MedicalExamination.new
  end

  def create
    MedicalExamination.create(medical_exam_params)
    redirect to action: :index
  end

  def edit
    
  end

  def show
  end

  

  def update
  end
  
  def destroy
  end

  def medical_exam_params
    params.require(:medical_examination).permit(:weight,:body_temp,:systolic_bp,:diastorlic_bp,:created_at,:updated_at)
  end

end
