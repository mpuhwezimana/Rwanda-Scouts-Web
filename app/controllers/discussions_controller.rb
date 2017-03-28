class DiscussionsController < ApplicationController

  def index
    @discussions = Discussion.all.order("created_at DESC")
  end 

  def show
    @discussion = Discussion.find_by(id: params[:id])
    @discussion_comment = DiscussionComment.find_by(id: params[:id])
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new({name: params[:name], post: params[:post]})
    if @discussion.save
      redirect_to "/discussions/#{@discussion.id}"
      flash[:success] = "discussion created"
    else
      render :new
      flash[:info] = "Missing name or post"
    end
  end

  def edit
    @discussion = Discussion.find_by(id: params[:id])    
  end

  def update
    @discussion = Discussion.find_by(id: params[:id])
    @discussion.name = params[:name]
    @discussion.post = params[:post]
    if @discussion.save
      redirect_to "/discussions/#{@discussion.id}"
      flash[:info] = "discussion updated"
    else
      render :edit
    end

  end

  def destroy
    @discussion = Discussion.find_by(id: params[:id])
    @discussion.destroy
    redirect_to "/discussions"
    flash[:danger] = "discussion deleted"
  end

  def search
    search_query = params[:search_input]
    @discussions = discussion.where("name LIKE ? OR post LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @discussions.empty?
      flash[:info] = "Nothing found in search about #{search_query}"
    else
      flash[:success] = "This is what we found for your search about #{search_query}"
    end
    render :index
  end

end