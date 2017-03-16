def fizz_buzz number
  for n in 1..number
    if n % 3 == 0 and n % 5 == 0
      puts "FizzBuzz, #{n}"
    elsif n % 3 == 0
      puts "Fizz, #{n}"
    elsif n % 5 == 0
      puts "Buzz, #{n}"
    else
      puts "#{n}"
    end
  end

end

fizz_buzz 20
