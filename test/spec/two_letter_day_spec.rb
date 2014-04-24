require 'spec_helper'
include TwoLetterDay
describe "two letter days" do
  it "should return a hash with a date key pointing to a 2 letter day value" do
    #  Below is a hash built for April, 2014
    april_hash = {1 => 'Tu', 2 => 'We', 3 => 'Th', 4 => 'Fr', 5 => 'Sa', 6 => 'Su',
                  7 => 'Mo', 8 => 'Tu', 9 => 'We', 10 => 'Th', 11 => 'Fr', 12 => 'Sa', 
                  13 => 'Su', 14 => 'Mo', 15 => 'Tu', 16 => 'We', 17 => 'Th', 18 => 'Fr',
                  19 => 'Sa', 20 => 'Su', 21 => 'Mo', 22 => 'Tu', 23 => 'We', 24 => 'Th',
                  25 => 'Fr', 26 => 'Sa', 27 => 'Su', 28 => 'Mo', 29 => 'Tu', 30 => 'We'}
    year = 2014
    month = 4 #April
    test_hash = two_letter_day(year, month)
    test_hash.must_equal april_hash
  end
end
