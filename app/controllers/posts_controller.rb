class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to @post, message: "Post created successfully !"
    else
      render :new
    end
  end
end