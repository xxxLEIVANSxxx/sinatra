require_relative '../test_helper'
require_relative '../../metrics/linear'

class LinearMetricTest < Minitest::Test
	def test_to_inch		
		assert_equal 39.37, LinearMetric.new(100, "cm").to_inch
		assert_equal 1200, LinearMetric.new(100, "foot").to_inch
		assert_equal 3937, LinearMetric.new(100, "m").to_inch
		assert_equal 3600, LinearMetric.new(100, "yard").to_inch
		assert_equal 6336000, LinearMetric.new(100, "mile").to_inch
		assert_equal 3937000, LinearMetric.new(100, "km").to_inch
	end

	def test_to_cm
		assert_equal 254, LinearMetric.new(100, "inch").to_cm
		assert_equal 3048, LinearMetric.new(100, "foot").to_cm
		assert_equal 10000, LinearMetric.new(100, "m").to_cm
		assert_equal 9144, LinearMetric.new(100, "yard").to_cm
		assert_equal 16093440, LinearMetric.new(100, "mile").to_cm
		assert_equal 9999980, LinearMetric.new(100, "km").to_cm
	end

	def test_to_foot
		assert_equal 8.33, LinearMetric.new(100, "inch").to_foot
		assert_equal 3.28, LinearMetric.new(100, "cm").to_foot
		assert_equal 328.08, LinearMetric.new(100, "m").to_foot
		assert_equal 300, LinearMetric.new(100, "yard").to_foot
		assert_equal 528000, LinearMetric.new(100, "mile").to_foot
		assert_equal 328084, LinearMetric.new(100, "km").to_foot
	end

	def test_to_m
		assert_equal 2.54, LinearMetric.new(100, "inch").to_m
		assert_equal 1, LinearMetric.new(100, "cm").to_m
		assert_equal 30.48, LinearMetric.new(100, "foot").to_m
		assert_equal 91.44, LinearMetric.new(100, "yard").to_m
		assert_equal 160934, LinearMetric.new(100, "mile").to_m
		assert_equal 100000, LinearMetric.new(100, "km").to_m
	end
	
	def test_to_yard
		assert_equal 2.78, LinearMetric.new(100, "inch").to_yard
		assert_equal 1.09, LinearMetric.new(100, "cm").to_yard
		assert_equal 33.33, LinearMetric.new(100, "foot").to_yard
		assert_equal 109.36, LinearMetric.new(100, "m").to_yard
		assert_equal 176000, LinearMetric.new(100, "mile").to_yard
		assert_equal 109360, LinearMetric.new(100, "km").to_yard
	end
	
	def test_to_mile
		assert_equal 0.00, LinearMetric.new(100, "inch").to_mile
		assert_equal 0.00, LinearMetric.new(100, "cm").to_mile
		assert_equal 0.02, LinearMetric.new(100, "foot").to_mile
		assert_equal 0.06, LinearMetric.new(100, "m").to_mile
		assert_equal 0.06, LinearMetric.new(100, "yard").to_mile
		assert_equal 62.15, LinearMetric.new(100, "km").to_mile
	end

	def test_to_km
		assert_equal 0.00, LinearMetric.new(100, "inch").to_km
		assert_equal 0.00, LinearMetric.new(100, "cm").to_km
		assert_equal 0.03, LinearMetric.new(100, "foot").to_km
		assert_equal 0.1, LinearMetric.new(100, "m").to_km
		assert_equal 0.09, LinearMetric.new(100, "yard").to_km
		assert_equal 160, LinearMetric.new(100, "mile").to_km
	end
end
