class TopController < ApplicationController
  def index

  @timeline = Timeline.all.order('created_at DESC')

  @timeline_resource = @timeline.map(&:content)
  @user = User.search(params[:serach])
end
end
