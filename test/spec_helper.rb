require File.expand_path('../../lib/two_letter_day', __FILE__)
require File.expand_path('../../lib/days_in_month', __FILE__)

require "minitest/autorun"
require "minitest/spec"
require "turn"

class FeatureSpec < MiniTest::Spec
   register_spec_type(/model$/, self)
end


Turn.config.format = :outline
