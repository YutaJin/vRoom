class UAlbumsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @u_album = UAlbum.new if @user.id == current_user.id
  end

  def create
    @user = User.find(params[:user_id])
    @u_album = UAlbum.create(create_params)
  end

  def edit
    @user = User.find(params[:user_id])
    @u_album = UAlbum.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @u_album = UAlbum.find(params[:id])
    @u_album.update(update_params) if @user.id == current_user.id
  end

  def show
    @user = User.find(params[:user_id])
    @u_album = UAlbum.find(params[:id])
    @uposts = @u_album.uposts.all.order('id DESC')
  end
  private
  def create_params
    params.require(:u_album).permit(:name, :image).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:u_album).permit(:name, :image).merge(user_id: current_user.id)
  end
end
