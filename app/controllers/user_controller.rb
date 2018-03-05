class UserController < ApplicationController
  def Edit
  end

  def Update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    user_params.require(:user).permt(:name, :email)
  end
end
