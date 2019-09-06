require_relative '../test_helper'
require_relative '../../metrics/temperature'

class TemperatureMetricTest < Minitest::Test
	def test_to_fahrenheit		
		assert_equal 212, TemperatureMetric.new(100, "celsius").to_fahrenheit
		assert_equal -279.67, TemperatureMetric.new(100, "kelvin").to_fahrenheit
	end

	def test_to_kelvin		
		assert_equal 373.15, TemperatureMetric.new(100, "celsius").to_kelvin
		assert_equal 310.15, TemperatureMetric.new(100, "fahrenheit").to_kelvin
	end

        def test_to_celsius		
		assert_equal -173.15, TemperatureMetric.new(100, "kelvin").to_celsius
		assert_equal 37, TemperatureMetric.new(100, "fahrenheit").to_celsius
	end
	
	def test_all
		assert_equal 50, TemperatureMetric.new(TemperatureMetric.new(TemperatureMetric.new((TemperatureMetric.new(TemperatureMetric.new(TemperatureMetric.new(50, 'f').to_kelvin, "k").to_celsius, 'c').to_fahrenheit), 'f').to_celsius, 'c').to_kelvin, 'k').to_fahrenheit
	end
end
