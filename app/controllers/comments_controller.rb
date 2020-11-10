class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @forum = Forum.find(params[:forum_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @forum = Forum.find(params[:forum_id])
    @comment.forum = @forum
    @comment.user = current_user
    if @comment.save
      redirect_to forums_path(@forum)
    else
      redirect_to new_forum_comment_path
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    #@comment.update(comment_params)
    @comment.forum = @forum
    redirect_to forums_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to forums_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user, :forum)
  end
end
