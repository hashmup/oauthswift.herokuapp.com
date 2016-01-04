# encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'logger'

enable :logging

before do
  logger.level = Logger::DEBUG
end
load 'ruby/redirect.rb'
load 'ruby/index.rb'
