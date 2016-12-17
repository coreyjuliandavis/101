def find_greatest (numbers)
  saved_number = nil

  numbers.each { |num|
    saved_number ||= num
    if saved_number >= num
      next
    else
      saved_number = num
    end
  }

  saved_number
end

# 1. A method that returns the sum of two integers
START

PRINT "what is your 1st number?"
GET num1
SET num1 = user input

PRINT "what is your 2nd number?"
GET num2
SET num2 = user input

SUM sum_num = num1 + num2
PRINT "The sum of #{num1} & #{num2} is #{sum_num}!"

END

# 2. A method that takes an array of strings, and returns a string that is all string concatenated together
START

SET string_array = empty array
PRINT "Tell me 3 of your favorite quotes"
PRINT "What is the first quote?"
SET string_array[0] = GET quote 1
PRINT "What is the first quote?"
SET string_array[1] = GET quote 2
PRINT "What is the first quote?"
SET string_array[2] = GET quote 3

PRINT "The best quote of all time is" + READ string_array[0] + READ string_array[1] + READ string_array[2] + "!"

END

# 3. A method that takes an array of integers, and returns a new array with every other element
START

SET array = GET array of integers
SET new_array = empty array
SET current_num = 1
IF array[current_num] is odd
  return array[current_num-1]
ELSE
  next
END

END
