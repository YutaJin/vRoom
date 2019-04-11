class GroupsController < ApplicationController
  def new
    @group = current_user.groups.new
  end

  def create
   @group =  current_user.groups.create(create_params)
  end

  def show
    @group = Group.find(params[:id])
    if @group.group_users.exists?(user_id: current_user.id)
      @g_album = @group.g_albums.all.order('id DESC')
    else
      redirect_to :root
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(update_params)
  end

  private
  def create_params
    params.require(:group).permit(:key, :detail, :image)
    end

  def update_params
    params.require(:group).permit(:key, :detail, :image)
  end
end
