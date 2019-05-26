class Question
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
  p1 = "What colour are apples?\n(a)red\n(b)blue\n(c)orange"
  p2 = "What colour are oranges?\n(a)red\n(b)blue\n(c)orange"

  questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c")
  ]

  def run_test(questions)
      answer = ""
      score = 0
      for i in questions
        puts  i.prompt
        answer = gets.chomp()
        if answer == i.answer
          score += 1
        end
      end
      puts "You've got " + score.to_s
  end
end
