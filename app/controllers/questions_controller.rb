class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    ask

    if @question == "I am going to work"
      @answer = "Great"
    elsif @question.include? "?"
      @answer = "Silly Question"
    else
      @answer = " I dont care"
    end
  end
end
