class Api::V1::UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users
  end
  
  
  
  def create
   
    User.create(user_params)
    head :created
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end


  def show
    # binding.pry
    user = User.find(params[:id])
    render json: user
  end

  def login
   
    check_data = User.select(:email, :password )
    render json: check_data
  end



  private

  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :sex,
      :notification
    )
  end
end



# 榛名神社 中里ファーム 水沢うどん 大沢屋pa
