class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(post_params)
    @comment.post = @post

    if @comment.save
      flash[:notice] = "Comment was saved."
    else
      flash[:error] = "There was an error saving the comment. Please try again."
    end

    redirect_to [@topic, @post]
  end

  def post_params
    params.require(:comment).permit(:body)
  end
end
