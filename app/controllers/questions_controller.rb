class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question != "I am going to work right now"
      if @question.include? "?"
        return @answer = "Silly question, get dressed and go to the work house."
      else
        return @answer = "I don't care, get dressed for work!"
      end
    end
    return @answer = ""
  end
end
