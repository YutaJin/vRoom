class UsersController < ApplicationController

def show
    @user = User.find(params[:id])
    @u_album = @user.u_albums.all

  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  def follow
    @user = User.find(params[:id])
    current_user.follow(@user)
    redirect_to user_path(@user)
  end



  def unfollow
    @user = User.find(params[:id])
    current_user.stop_following(@user)
    redirect_to user_path(@user)
  end

  def search
    @user = User.search(params[:search])
  end
  private
  def update_params
    params.require(:user).permit(:nickname, :text, :image)
  end
end
