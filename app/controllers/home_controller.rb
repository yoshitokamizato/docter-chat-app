class HomeController < ApplicationController
   def index
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
