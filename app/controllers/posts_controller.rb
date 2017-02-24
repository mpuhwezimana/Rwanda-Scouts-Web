class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
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
    redirect_to "/posts/#{@post.id}"
    flash[:success] = "Post created" 
  end

  def edit
    @post = Post.find_by(id: params[:id])    
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save
    redirect_to "/posts/#{@post.id}"
    flash[:info] = "Post updated"
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to "/posts"
    flash[:danger] = "Post deleted"
  end

  def search
    search_query = params[:search_input]
    @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{search_query.downcase}%", "%#{search_query}%")
    if @posts.empty?
      flash[:info] = "Nothing found in search about #{search_query}"
    else
      flash[:success] = "This is what we found for your search about #{search_query}"
    end
    render :index
  end

end    