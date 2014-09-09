require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
answer=" "

while !answer.empty?
message=gets.strip
answer=coach_answer(message)
puts answer
end


