require 'spec_helper'
require 'date'
include Days

describe "days" do
  it "should return days in month for a given year and month, including leap year" do
    year = 2012
    month = 2
    leap_year = 29
    days = days_in_month(year, month)
    days.must_equal leap_year
  end
  it "should not have 29 days in a non-leap year" do
    year = 2014
    month = 2
    normal_year = 29
    days = days_in_month(year, month)
    days.wont_equal normal_year
  end
end
