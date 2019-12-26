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
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end
  
  get "/multiply/:number1/:number2" do
    @number1 = params[:number1]
    @number2 = params[:number2]
    "#{@number1 * @number2}"
  end
end