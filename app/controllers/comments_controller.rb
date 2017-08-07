class CommentsController < ApplicationController


  def create
    @entry = Entry.find(params[:entry_id])
    @comment = @entry.comments.create(comments_params)

    redirect_to entry_path(@entry)
  end

  def destroy
    @entry = Entry.find(params[:entry_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to entry_path(@entry)
  end

  private
    def comments_params
      params.require(:comment).permit(:author_name, :body)
    end
end
