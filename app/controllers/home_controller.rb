class HomeController < ApplicationController
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
    
    @user = User.new
  end

  def new
    @user= User.new
  end

  def edit
  end

  def create
    @user.create(user_params)
    redeirect_to action: :index
  end

  def show
  end

  def update
  end

  def destory
  end
end
