class UpostsController < ApplicationController
   def new
    @user = User.find(params[:user_id])
    @u_album = UAlbum.find(params[:u_album_id])
    @upost = Upost.new

  end

  def create
    @user = User.find(params[:user_id])
    @u_album = UAlbum.find(params[:u_album_id])
    @upost = Upost.create(create_params)
  end

  def edit
     @user = User.find(params[:user_id])
     @u_album = UAlbum.find(params[:u_album_id])
    @upost = Upost.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @upost = Upost.find(params[:id])
    @upost.update(update_params)
  end

  def destroy
    upost =Gpost.find(params[:id])
    upost.destroy
  end
  private
  def create_params
    params.require(:upost).permit(:text, :image).merge(user_id: current_user.id, u_album_id: params[:u_album_id])
  end

  def update_params
    params.require(:upost).permit(:text, :image).merge(user_id: current_user.id, u_album_id: params[:u_album_id])
  end
end
