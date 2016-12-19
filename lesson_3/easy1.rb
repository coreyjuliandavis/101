#  1. Output will be the original array [1, 2, 2, 3]
#     since uniq! (did not mutate the caller) was not invoked.

#  2. ! tends to have a destructive capability when called
#  ? typically is checking for truthiness
#   2.1
#     '!=' is Does not equal
#   2.2
#     Will return false or inverse
#   2.3
#     Will permanently modify the original words variable by
#     removing duplicates
#   2.4
#     Ternery operator for if else
#   2.5
#     Ternery operator for if else
#   2.6
#     Will return inverse twice or the original truthiness
#
#  3. Replace the word 'important' with 'urgent'
#        advice = "Few things in life are as important as house training your pet dinosaur."
#        advice = advice.gsub("important", "urgent")
#        puts advice
#
#  4. delete_at(1) will remove the second item in the array
#     delete(1) will remove the the index in the array with the value 1
#
#  5. Programmatically determine if 42 lies between 10 & 100.
#      test = (10..100).to_a
#      p test.include?(42)
#  6. Show two different ways to put the expected "Four score and " in front of it.
#      famous_words = "seven years ago..."
#      famous_words = "Four score and " + famous_words
#      puts famous_words
#  or
#      intro = "Four score and"
#      famous_words = "seven years ago..."
#      puts "#{intro} #{famous_words}"
