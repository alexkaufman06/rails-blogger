class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post Successfully Added!"
      redirect_to posts_path
    else
      flash[:alert] = "There was a problem creating your post, please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post])
      flash[:notice] = "Post Successfully Updated!"
      redirect_to posts_path
    else
      flash[:alert] = "There was a problem updating your post, please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:alert] = "Post Successfully Deleted!"
    redirect_to posts_path
  end
end
