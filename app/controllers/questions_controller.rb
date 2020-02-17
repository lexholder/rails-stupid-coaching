class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].end_with?('?')
      @question = 'Silly question, get dressed and go to work!'
      @yourquestion = params[:question]
      @told = 'You asked the coach:'
      @coach = 'The coach replied:'
    elsif params[:question] == 'I am going to work'
      @great = 'Good job!'
      @yourquestion = params[:question]
      @told = 'You told the coach what he wanted to hear:'
      @coach = 'The coach replied:'
    else
      @care = "I don't care, get dressed and go to work!"
      @yourquestion = params[:question]
      @told = 'You told the coach:'
      @coach = 'The coach replied:'
      @conversation = 'Dialogue'
    end
  end
end
