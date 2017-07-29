class CoachingController < ApplicationController
  def answer
    @ask = params[:query]

    def coach_answer(your_message)
      # TODO: return coach answer to your_message
      if your_message.downcase == "I am going to work right now!".downcase
        return ""
      elsif your_message.end_with?("?")
        return "Silly question, get dressed and go to work!"
      elsif (your_message != "I am going to work right now!") && !your_message.end_with?("?")
        return "I don't care, get dressed and go to work!"
      end
    end

    @answer = coach_answer(@ask)
  end

  def ask
  end
end
