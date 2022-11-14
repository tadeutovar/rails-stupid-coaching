class QuestionsController < ApplicationController

  def ask
  end

  def answer
    search = params[:question]
    @answer = quest(search)

  end

  def quest(str)
    answer_one = "Great!"
    answer_two = "Silly question, get dressed and go to work!."
    answer_three = "I don't care, get dressed and go to work!"

    if str === "I am going to work"
      answer_one
    elsif str.end_with?("?")
      answer_two
    else
      answer_three
    end
  end
end
