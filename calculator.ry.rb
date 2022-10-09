# 1) Ask the User to input two numbers.
# 2) Ask the User to give an operator.
# 3) Perform the operation.
# 4) Output the result.

def prompt(message)
    Kernel.puts "=> #{message}"
  end
  
  def valid_number?(num)
    num.to_i != 0
  end
  
  def operation_to_message(op)
    case op 
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    end
  end
  
  prompt("WELCOME TO DYLAN'S CALCULATOR")
  prompt("What is your name?")
  name = ''
  
  name = ''
  loop do
    name = Kernel.gets().chomp()
  
    if name.empty?()
      prompt("Make sure to use a valid name.")
    else
      break
    end
  end
  
  prompt("Welcome, #{name}!")
  
  loop do
    number1 = ''
    loop do
      prompt("What is the first number?")
      number1 = Kernel.gets().chomp()
  
      if valid_number?(number1)
        break
      else
        prompt("Hmm... that doesn't look like a valid number")
      end
    end
  
    number2 = ''
    loop do
      prompt("What is the second number?")
      number2 = Kernel.gets().chomp()
  
      if valid_number?(number2)
        break
      else
        prompt("Hmm... that doesn't look like a valid number")
      end
    end
  
    operator = ''
    loop do
      prompt("What operator should we use? 1) Add, 2) Subtract, 3) Multiply, 4) Divide")
      operator = Kernel.gets().chomp
  
      if %w(1 2 3 4).include?(operator)
        break
      else
        prompt("Must choose 1, 2, 3 or 4")
      end
    end
    
    prompt("#{operation_to_message(operator)}!!!")
  
    result = case operator
      when '1'
        number1.to_i + number2.to_i
      when '2'
        number1.to_i - number2.to_i
      when '3'
        number1.to_i * number2.to_i
      when '4'
        number1.to_f / number2.to_f
    end
  
    prompt("The result is #{result}!")
    prompt("Do you want to run another calculation? (y or n)")
    break unless gets.chomp.downcase == 'y'
  end
  
  prompt("Thank you for using our calculator.")