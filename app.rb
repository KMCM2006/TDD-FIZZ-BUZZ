require 'sinatra'
require 'erb'
require './lib/fizzbuzz'

get '/' do
  @title = "Fizz Buzz"
  erb :index
end

post '/generate' do
  limit = params[:limit]
  @fb = FizzBuzz.new()
  @secuencia =  @fb.obtenerSecuencia(limit)
  erb :result
end