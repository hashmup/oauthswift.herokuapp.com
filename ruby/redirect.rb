# encoding: utf-8

configure do 
  Log = Logger.new("sinatra.log")
  Log.level  = Logger::INFO 
end

get "/callback/*" do
  path = request.path.gsub("/callback","")
  path_query = "#{path}?#{request.query_string}"
  url = "perobo://oauth-callback#{path_query}"  
  puts url
  Log.info url
  redirect url
end
