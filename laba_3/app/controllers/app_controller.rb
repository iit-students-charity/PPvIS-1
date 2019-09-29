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
    set :root, File.expand_path("../../", __FILE__)
    set :public_folder, File.expand_path("../../", __FILE__) + '/public'
    set :public_folder, File.dirname(__FILE__) + '/public'
    set :session_secret, ENV['key']
  end

  get '/' do
    erb :sign_in
  end

  post '/login' do
    unless params.nil?
      user = User.find_by( card_number: params[:card_number])
      if user.nil? || user.pin != params[:pin]
        erb :sign_in
      else
        erb :home
      end
    end
  end



  #use UserController
end
