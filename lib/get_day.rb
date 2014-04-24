#!/usr/bin/ruby

require ::File.expand_path( '../two_letter_day', __FILE__ )

include TwoLetterDay

puts "Enter year:"

year = Integer( gets )

unless ( year.between?(1,5000) )
   puts "Not a valid entry: Please re-enter the year: "
   year = Integer( gets )
end

puts "Enter month: \n"

month = Integer( gets )

unless ( month.between?(1,12) )
   puts "Not a valid entry: Please enter numerical month between 1-12: "
   month = Integer( gets )
end 

days = two_letter_day(year, month)

puts "Enter a date in the month to get the 2 letter day:"

date = Integer(gets)

unless date <= days.length || date < 1
  puts "Not a date in current month, please enter a valid date:"
  date = Integer( gets )
end

puts "Two letter abbreviation for your date is: #{days[date]}"
