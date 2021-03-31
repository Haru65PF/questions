class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def create
    @questions = Question.new(question_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def question_params
    
  end
end
