# frozen_string_literal: true

require 'sinatra'
require 'rubygems'
require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/activerecord'
require 'erb'
require 'pry'

require 'dotenv'
require 'require_all'

require_rel '../models/'
require_relative 'user_controller'
require_relative 'operations_controller'

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

  post '/' do
    erb :sign_in
  end

  get '/log_out' do
    session[:card_number] = nil
    redirect '/'
  end

  use UserController
  use OperationsController
end
