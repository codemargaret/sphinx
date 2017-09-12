class Sphinx
  attr_accessor :answer, :question, :q_and_a
  def initialize(question, answer)
    @answer = answer.downcase.gsub(/[^a-zA-Z]/, '')
    @question = question
    @q_and_a = {
      "What walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?" => ["person","human","man"],

      "To you, rude would I never be, Though I flag my tongue for all to see." => ["dog"],

      "Always wax, yet always wane: I melt, succumbéd to the flame. Lighting darkness, with fate unblest, I soon devolve to shapeless mess." => ["candle"],

      "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea." => ["asteroids"],

      "Here there is no north, west, nor east, And weather fit for not man nor beast." => ["north pole"]
    }
  end

  def riddle?
    q_and_a.fetch(question[0]).include?(answer[0]) & q_and_a.fetch(question[1]).include?(answer[1])
  end

  def pick_question
    @question = q_and_a.keys.sample(2)
  end
end
