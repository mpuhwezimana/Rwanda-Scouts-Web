class PostsController < ApplicationController

  def index
    @posts = Post.all
  end 

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @posts = Post.new
  end

  def create
    @post = Post.new({title: params[:title], body: params[:body]})
    @post.save
    
  end

  def edit
    @post = Post.find_by(id: params[:id])    
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save   
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
  end

end    