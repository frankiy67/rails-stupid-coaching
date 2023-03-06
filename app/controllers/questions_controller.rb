class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:question].include? '?'
      @coach_response = 'Silly question, get back to work!'
    elsif params[:question] == 'I am going to work'
      @coach_response = 'Great'
    else
      @coach_response = "I don't care, get dressed and go to work"
    end
  end
end
