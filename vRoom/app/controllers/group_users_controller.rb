class GroupUsersController < ApplicationController
  def new
   @user = User.find(current_user.id)
   @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.find_by(id: params[:group_id])
    @user = User.find_by(id: params[:user_id])
    @group_user = GroupUser.create(group_id: @group.id, user_id: @user.id)


  end

  def destroy
    @user = User.find_by(id: params[:user_id])
    @group = Group.find_by(id: params[:group_id])
    @group_user = GroupUser.destroy
  end

 private
 def create_params

  params.require(:group_user).merge(group_id: @group.id , user_id: @user.id)
 end
end
