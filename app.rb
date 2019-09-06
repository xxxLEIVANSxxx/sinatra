require 'sinatra'
require 'json'
require_relative 'metrics/linear'
require_relative 'metrics/temperature'

class App < Sinatra::Base
  get '/metrics/linear/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    value = params[:value].to_i
    dest_type = params[:dest_type]
    metric = LinearMetric.new(value, "#{orig_type}")
    { result: metric.send("to_#{dest_type}".to_sym) }.to_json
  end

  get '/metrics/temperature/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    value = params[:value].to_i
    dest_type = params[:dest_type]
    metric = TemperatureMetric.new(value, "#{orig_type}")
    { result: metric.send("to_#{dest_type}".to_sym) }.to_json
  end
end
