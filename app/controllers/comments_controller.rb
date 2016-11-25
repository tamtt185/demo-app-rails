class CommentsController < ApplicationController
  def show
    @entry = Entry.find_by_id params[:id]
    @comments = @entry.comments.paginate(page: params[:page], per_page: 5)
  end
  
  def new
  	@comment = Comment.new
  end

  def create
    @comment = current_user.comments.new comment_params
    if @comment.save
      flash[:success] = "Created successfully"
    end
    redirect_to comment_path(id: @comment.entry_id)
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :entry_id, :user_id)
    end
end
