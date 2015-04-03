class CommentsController < ApplicationController
  respond_to :html, :js

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Comment Successfully Added!"
      # redirect_to post_path(@post)
    else
      flash[:danger] = "There was a problem creating your comment, please try again"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:success] = "Comment Successfully Updated!"
      redirect_to post_path(@comment.post)
    else
      flash[:danger] = "There was a problem updating your comment, please try again"
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:danger] = "Comment Successfully Deleted!"
    redirect_to post_path(@comment.post)
  end

private
  def comment_params
    params.require(:comment).permit(:date, :comment)
  end
end
