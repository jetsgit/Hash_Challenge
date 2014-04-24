require 'date'
# require File.expand_path('../../lib/days_in_month', __FILE__)

module Days
  def days_in_month(year, month)
    total_days = ( Date.new(year, 12, 31) << (12-month) ).day
    return total_days
  end
end
