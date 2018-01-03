class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params.require(:comment).permit(:body))
    @post = Post.find(params[:post_id])
    @comment.post = @post
    # tempfix - no user login system yet
    @comment.user = User.first

    if @comment.save
      flash[:notice] = "Your comment has been saved!"
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end
end