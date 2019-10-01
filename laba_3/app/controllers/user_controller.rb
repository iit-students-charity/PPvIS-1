require_relative '../../helpers/operations_helper'
require_relative '../../helpers/validation_helper'

class UserController < Sinatra::Base
  set views: proc { File.join(root, '../views/') }
  register Sinatra::ActiveRecordExtension
  register Sinatra::Flash

  include OperationsHelper
  include ValidationHelper

  get '/home'do
    session[:operation] = :home
    erb :authenticate
  end

  post '/login' do
    if valid_user?(params[:card_number], params[:pin])
      session[:card_number] = params[:card_number]
      erb :home
    end
  end

  post '/authenticate' do
    if valid_user?(session[:card_number], params[:pin])
      erb session[:operation]
    end
  end
end
