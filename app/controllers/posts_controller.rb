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
    @post = Post.new({
      title: params[:post][:title],
      content: params[:post][:content],
    })
    if @post.save
      redirect_to @post, notice: 'Post was created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update({
      title: params[:post][:title],
      content: params[:post][:content],
    })
      redirect_to @post, notice: 'Post was updated successfully.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: 'Post was deleted successfully.'
  end
end