VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, the computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# 1. Yes, because it doesn't invoke the code until passing both defined methods.
# 2. Will work after prompt, will fail before prompt.
# 3. The outcome would no longer be clear to the player
# 4. Change the if statement into a case statement
