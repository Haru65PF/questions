class CommentsController < ApplicationController
  
  def new
    @question = Question.find(params[:question_id])
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to question_path(@comment.question)
    else
     @question = @comment.question
     @comments = @question.comments
     render template: "questions/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
