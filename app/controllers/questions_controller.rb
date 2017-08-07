class QuestionsController < ApplicationController

  def answer
    @question = params["question"]
    coach_answer_enhanced(@question)
  end

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      @answer = ""
    elsif your_message.end_with?("?")
     @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer != ""
      if your_message.upcase == your_message
        @answer = "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end

  def ask
  end
end
