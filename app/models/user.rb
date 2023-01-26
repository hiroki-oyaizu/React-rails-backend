class User < ApplicationRecord
  def login_check
    users = User.all
    check_data = User.select(:email, :password )

    render json: check_data
  end
end
