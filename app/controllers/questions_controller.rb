class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to '/'
  end
end
