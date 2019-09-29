# frozen_string_literal: true

require 'sinatra'
require 'rubygems'
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/activerecord'
require 'erb'

require 'dotenv'
require 'require_all'

require_rel '../models/'
require_relative 'user_controller'

class AppController < Sinatra::Base
  Dotenv.load
  configure do
    enable :sessions
    set :public_folder, File.dirname(__FILE__) + '/public'
    set :session_secret, ENV['key']
  end

  get '/' do
    erb :home
  end

  post '/login' do
    user = User.find_by(:card_number, params[:card_number])
    unless user.nil?
      erb :home if user.pin == params[:pin]
    end
  end

  use UserController
end
