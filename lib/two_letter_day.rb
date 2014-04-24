require 'date'
require ::File.expand_path( '../days_in_month', __FILE__ )

module TwoLetterDay
  include Days
  def two_letter_day(year, month)
    days = days_in_month(year, month)  
    date =  Date.new(year,month,1)
    days_hash = {}
    i = 0
    while i <   days 
      weekday = date.strftime("%a")
      if weekday.length > 2
        weekday.chop!
      end
      days_hash[date.day] = weekday
      date = date.next
      i += 1
    end
    return days_hash
  end
end
