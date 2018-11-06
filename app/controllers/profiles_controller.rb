class ProfilesController < ApplicationController
def show
end

  def edit
  end

  def update
    current_user.update_attributes(user_params)

    if current_user.save
      redirect_to profile_path
    else

      render :edit
    end
  end

private

def user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
end

end