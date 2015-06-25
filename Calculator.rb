#charles input control
def take_input
  choice = "y"
until choice == "n" || choice == "N"
  puts "Please input a single-step math operation:"
  operation_input = gets.chomp
  checker = 0 
until checker == 1
  if operation_input.include? "*"
    storage = operation_input.split("*")
    num1 = storage.first.to_i
    num2 = storage.last.to_i
    checker=1
    mult(num1,num2)
  elsif operation_input.include? "x"
    storage = operation_input.split("x")
    num1 = storage.first.to_i
    num2 = storage.last.to_i
    checker=1
    mult(num1,num2)
  elsif operation_input.include? "/"
    storage = operation_input.split("/")
    num1 = storage.first.to_i
    num2 = storage.last.to_i
    checker=1
    div(num1,num2)
  elsif operation_input.include? "-"
    storage = operation_input.split("-")
    num1 = storage.first.to_i
    num2 = storage.last.to_i
    checker=1
    subt(num1,num2)
  elsif operation_input.include? "+"
    storage = operation_input.split("+")
    num1 = storage.first.to_i
    num2 = storage.last.to_i
    checker=1
    add(num1,num2)
  else
    puts "ERROR: Invalid operation request. Enter again:"
    operation_input = gets.chomp
    checker=0
  end
  end
puts "Care to do again? [Y/N]" #asks about repeating program
choice = gets.chomp.downcase 
  unless (choice == "n") || (choice == "y") then
    puts "ERROR: Invalid input. Try again: [Y/N]"
    choice = gets.chomp.downcase
  end #end unless loop
end #end until loop
end
#end input control
def mult(num1, num2)
  puts (num1 * num2)
end

def div(num1, num2)
  puts (num1 / num2)
end

def add(num1, num2)
  puts (num1 + num2)
end

def subt(num1, num2)
  puts (num1 - num2)
end

def square_root(num1)
  puts (sqrt(num1))
end


take_input #calls the method
