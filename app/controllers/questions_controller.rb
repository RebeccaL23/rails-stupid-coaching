class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ""
    @query = ""

    @query = params[:question]

    if @query == "I am going to work"
      @answer = "Great!"
    elsif @query[-1,1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
