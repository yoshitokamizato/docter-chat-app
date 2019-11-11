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
    @medical_exam = MedicalExamination.new( weight: params[:weight],body_temp: params[:body_temp],systolic_bp: params[:systolic_bp],diastorlic_bp: params[:diastorlic_bp],user_id: current_user.id)
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


end
