require_relative '../test_helper'
require_relative '../../app'
require 'json'

class TemperatureMetricTest < Minitest::Test

  def app
    App
  end

  def test_to_fahrenheit
    get '/metrics/temperature/celsius/200/fahrenheit'
    assert_equal 200, last_response.status
    assert_equal 392, JSON.parse(last_response.body)['result']
  end

  def test_to_kelvin
    get '/metrics/temperature/fahrenheit/200/kelvin'
    assert_equal 200, last_response.status
    assert_equal 366.15, JSON.parse(last_response.body)['result']
  end

  def test_to_celsius
    get '/metrics/temperature/kelvin/200/celsius'
    assert_equal 200, last_response.status
    assert_equal -73.15, JSON.parse(last_response.body)['result']
  end
end
