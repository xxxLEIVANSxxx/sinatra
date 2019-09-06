require_relative '../test_helper'
require_relative '../../app'
require 'json'

class LinearMetricTest < Minitest::Test

  def app
    App
  end

  def test_to_inch
    get '/metrics/linear/foot/200/inch'
    assert_equal 200, last_response.status
    assert_equal 2400, JSON.parse(last_response.body)['result']
  end

  def test_to_cm
    get '/metrics/linear/inch/200/cm'
    assert_equal 200, last_response.status
    assert_equal 508, JSON.parse(last_response.body)['result']
  end

  def test_to_foot
    get '/metrics/linear/m/200/foot'
    assert_equal 200, last_response.status
    assert_equal 656.17, JSON.parse(last_response.body)['result']
  end

  def test_to_m
    get '/metrics/linear/yard/200/m'
    assert_equal 200, last_response.status
    assert_equal 182.88, JSON.parse(last_response.body)['result']
  end

  def test_to_yard
    get '/metrics/linear/mile/200/yard'
    assert_equal 200, last_response.status
    assert_equal 352000, JSON.parse(last_response.body)['result']
  end

  def test_to_mile
    get '/metrics/linear/km/200/mile'
    assert_equal 200, last_response.status
    assert_equal 124.3, JSON.parse(last_response.body)['result']
  end

  def test_to_km
    get '/metrics/linear/cm/200/km'
    assert_equal 200, last_response.status
    assert_equal 0.00, JSON.parse(last_response.body)['result']
  end

end
