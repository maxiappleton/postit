class CommentsController < ApplicationController
  before_action :require_user

  def create
    @comment = Comment.new(params.require(:comment).permit(:body))
    @post = Post.find_by(slug: params[:post_id])
    @comment.post = @post
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Your comment has been saved!"
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def vote
    @comment = Comment.find(params[:id])
    @vote = Vote.create(voteable: @comment, user: current_user, vote: params[:vote])

    respond_to do |format|
      format.html do
        if @vote.valid?
          flash[:notice] = 'Your vote was counted.'
        else
          flash[:error] = 'You can only vote on a comment once.'
        end

        redirect_to :back
      end

      format.js do
        # by default attempts to render a JS template views/comments/vote.js.erb
      end
    end


    
  end
end