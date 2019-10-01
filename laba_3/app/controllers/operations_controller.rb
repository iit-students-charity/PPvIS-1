class OperationsController < Sinatra::Base
  set views: proc { File.join(root, '../views/') }
  include OperationsHelper

  get '/balance'do
    session[:operation] = :balance
    erb :authenticate
  end

  get '/transfer'do
    session[:operation] = :transfer
    erb :authenticate
  end

  post '/transfer'do
    transfer(session[:card_number], params[:to_card_number], params[:money])
  end

  get '/withdraw'do
    session[:operation] = :withdraw
    erb :authenticate
  end

  post '/withdraw'do
    withdraw(session[:card_number], params[:money])
  end

  get '/deposit'do
    session[:operation] = :deposit
    erb :authenticate
  end

  post '/deposit'do
    deposit(session[:card_number], params[:money])
  end
end