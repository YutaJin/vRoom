class GAlbumsController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.new
  end

  def create
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.create(create_params)
  end

  def show
    @group = Group.find(params[:group_id])
    @g_album = GAlbum.find(params[:id])
    @gposts = @g_album.gposts.all.order('id DESC')
  end
  private
  def create_params
    params.require(:g_album).permit(:name, :image).merge(group_id: params[:group_id])
  end
end
