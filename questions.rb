
module Questions

    def to_ask
      ask = rand(1..4)
      num1 = rand(1..10)
      num2 = rand(1..10)
  
      case ask
      when 1
        ask_question(:+, num1, num2)
      when 2
        ask_question(:-, num1, num2)
      when 3
        ask_question(:*, num1, num2)
      when 4
        ask_question(:/, num1, num2)
      end
    end
  
    private
  
    def ask_question(operation, num1, num2)
      if operation == :/
        puts "What is #{num1} #{operation_symbol_to_string(operation)} #{num2} (round to the nearest whole number)?"
        answer = (num1.to_f / num2).round
      else
        puts "What is #{num1} #{operation_symbol_to_string(operation)} #{num2}?"
        answer = num1.send(operation, num2)
      end
  
      print ">"
      response = gets.chomp.to_i
  
      if answer == response
        puts "#{response} is the correct answer!!"
        true
      else
        puts "#{response} is the wrong answer :("
        false
      end
    end
  
    def operation_symbol_to_string(operation)
      case operation
      when :+
        "plus"
      when :-
        "minus"
      when :*
        "times"
      when :/
        "divided by"
      end
    end
  end