class DiscussionCommentsController < ApplicationController
  def create
    @discussion = Discussion.find(params[:discussion_id])
    @discussion_comment = @discussion.discussion_comments.create(params[:discussion_comment].permit(:name, :body))
    redirect_to discussion_path(@discussion)
  end

  def destroy
    @discussion_comment = DiscussionComment.find_by(id: params[:id])
    @discussion_comment.destroy
    redirect_to discussion_path(@discussion)
  end
end