class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].end_with?('?')
      @question = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      @great = 'Great!'
    else
      @care = "I don't care, get dressed and go to work!"
    end
  end
end
