require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end
  
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  # Code your final two routes here:
  get "goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end
  
  get "multiply/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1 + @num2 }"
  end
end