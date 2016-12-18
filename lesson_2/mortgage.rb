def prompt(message)
  puts("=> #{message}")
end

loan_amt = ''
apr = ''
apr_mo = ''
duration = ''
duration_mo = ''

prompt("I hear you're in the market for a home!")
prompt("How much of the cost will be financed?")

loop do
  loan_amt = gets.chomp
  loan_amt = loan_amt.to_f

  if loan_amt == 0.0
    prompt("Please put in a valid principal amount")
  else
    break
  end
end

prompt("What is your anticipated annual interest rate? IE - 5.2%")

loop do
  apr = gets.chomp
  apr_mo = (apr.to_f / 12) / 100

  if apr == 0.0
    prompt("Please put in a valid annual interest rate. IE - 5.2%")
  else
    break
  end
end

prompt("How many years is the loan?")

loop do
  duration = gets.chomp
  duration_mo = duration.to_f * 12

  if duration_mo == 0.0
    prompt("Please put in the number of years financed")
  else
    break
  end
end

m = loan_amt * (apr_mo / (1 - (1 + apr_mo)**(-duration_mo)))

prompt("Your monthly payment will be #{m}")
