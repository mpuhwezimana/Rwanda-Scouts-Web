class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new({name: params[:name], body: params[:body]})
    if @comment.save
      redirect_to "/posts/#{@post.id}"
      flash[:success] = "Comment successfully added"
    else
      render :new
      flash[:info] = "Missing something in the comment"
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])    
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.name = params[:title]
    @comment.body = params[:body]
    if @comment.save
      redirect_to "/posts/#{@post.id}"
      flash[:info] = "Comment updated"
    else
      render :edit
    end

  end

  def destroy
    @comment = Post.find_by(id: params[:id])
    @comment.destroy
    redirect_to "/posts/#{@post.id}"
    flash[:danger] = "Comment deleted"
  end

end
