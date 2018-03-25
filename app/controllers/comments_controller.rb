class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.school
    else
      render template: "schools/show"
    end

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.school
  end
  private

  def comment_params
    params.require(:comment).permit(:body, :school_id, :user_id)
  end
end
