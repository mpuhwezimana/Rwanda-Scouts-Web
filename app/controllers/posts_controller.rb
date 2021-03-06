class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order("created_at DESC")
  end 

  def show
    @post = Post.find_by(id: params[:id])
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new({title: params[:title], image: params[:image], introduction: params[:introduction], author: params[:author], body: params[:body]})
    if @post.save
      redirect_to "/posts/#{@post.id}"
      flash[:success] = "Post created"
    else
      render :new
      flash[:info] = "Missing title or body"
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])    
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.image = params[:image]
    @post.introduction = params[:introduction]
    @post.author = params[:author]
    @post.body = params[:body]
    if @post.save
      redirect_to "/posts/#{@post.id}"
      flash[:info] = "Post updated"
    else
      render :edit
    end

  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to "/posts"
    flash[:danger] = "Post deleted"
  end

  def search
    search_query = params[:search_input]
    @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @posts.empty?
      flash[:info] = "Nothing found in search about #{search_query}"
    else
      flash[:success] = "This is what we found for your search about #{search_query}"
    end
    @posts = Post.all
    render :index
  end
end