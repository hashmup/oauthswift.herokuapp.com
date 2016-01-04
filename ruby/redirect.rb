# encoding: utf-8
require 'sinatra'
require 'logger'

configure do
  set :logging, nil
  logger = Logger.new STDOUT
  logger.level = Logger::INFO
  logger.datetime_format = '%a %d-%m-%Y %H%M '
  set :logger, logger
end

get "/callback/*" do
  path = request.path.gsub("/callback","")
  path_query = "#{path}?#{request.query_string}"
  url = "perobo://oauth-callback#{path_query}"  
  puts url
  settings.logger.info url
  redirect url
end
