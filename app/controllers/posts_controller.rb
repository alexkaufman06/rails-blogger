class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

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
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post Successfully Added!"
      redirect_to posts_path
    else
      flash[:danger] = "There was a problem creating your post, please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "Post Successfully Updated!"
      redirect_to posts_path
    else
      flash[:danger] = "There was a problem updating your post, please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:danger] = "Post Successfully Deleted!"
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :date, :blog)
  end
end
