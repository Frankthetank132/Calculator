def take_input
  puts "Please input a single-step math operation:"
  operation_input = gets.chomp
  
  if operation_input.include? "*"
    storage = operation_input.split("*")
    num1 = storage.first
    num2 = storage.last
    mult(num1,num2)
  elsif operation_input.include? "x"
    storage = operation_input.split("x")
    num1 = storage.first
    num2 = storage.last
    mult(num1,num2)
  elsif operation_input.include? "/"
    storage = operation_input.split("/")
    num1 = storage.first
    num2 = storage.last
    div(num1,num2)
  elsif operation_input.include? "-"
    storage = operation_input.split("-")
    num1 = storage.first
    num2 = storage.last
    subt(num1,num2)
  elsif operation_input.include? "+"
    storage = operation_input.split("+")
    num1 = storage.first
    num2 = storage.last
    add(num1,num2)
  else
    puts "ERROR: Invalid operation request."
  end
end

def mult(num1, num2)
  puts (num1 * num2)
end

def div(num1, num2)
  puts (num1 / num2)
end

def add(num1, num2)
  puts (num1 + num2)
end
