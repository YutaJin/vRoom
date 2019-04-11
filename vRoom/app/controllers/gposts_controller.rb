class GpostsController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.find(params[:g_album_id])
    @gpost = Gpost.new

  end

  def create
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.find(params[:g_album_id])
    @gpost = Gpost.create(create_params)
  end

  def edit
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.find(params[:g_album_id])
    @gpost = Gpost.find(params[:id])

  end

  def update
    @group = Group.find(params[:group_id])
    @gpost = Gpost.find(params[:id])
    @gpost.update(update_params)
  end

  def destroy
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.find(params[:g_album_id])
    gpost = Gpost.find(params[:id])
    gpost.destroy
    redirect_to group_g_album_path(@group, @g_album)
  end

  private
  def create_params
    params.require(:gpost).permit(:text, :image).merge(group_id: params[:group_id], g_album_id: params[:g_album_id], user_id: current_user.id)
  end

  def update_params
    params.require(:gpost).permit(:text, :image).merge(group_id: params[:group_id], g_album_id: params[:g_album_id], user_id: current_user.id)
  end
end
