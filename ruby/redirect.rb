# encoding: utf-8

get "/callback/*" do
  path = request.path.gsub("/callback","")
  path_query = "#{path}?#{request.query_string}"
  url = "perobo://oauth-callback#{path_query}"  
  puts "hello"
  logger.info url
  logger.debug url
  redirect url
end
