# encoding: utf-8

get "/callback/*" do
  path = request.path.gsub("/callback","")
  path_query = "#{path}?#{request.query_string}"
  url = "perobo://oauth-callback#{path_query}"  
  puts url
  error_logger = Logger.new('log/errors.logrror do
    e = request.env['sinatra.error']
    error_logger.info "#{url}"
    Kernel.puts "#{url}"
    puts url
    'Application error'
  end
  redirect url
end
