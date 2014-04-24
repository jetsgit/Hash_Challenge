### A simple app to return a 2 letter day abbreviation given a month and year.

First determine the number of days in the month:

```
  def days_in_month(year, month)
    total_days = ( Date.new(year, 12, 31) << (12-month) ).day
    return total_days
  end

```
Next, build hash  with the date being a key to the 2 letter day value:

```
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

```


