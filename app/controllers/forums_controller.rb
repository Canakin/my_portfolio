class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def forum_id
    @forum = Forum.find(params[:id])
  end
end
