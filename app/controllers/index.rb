require_relative '../models/url'

get '/' do
  erb :index
end

post '/urls' do
  puts "[LOG] Responding to a GET request for /sandbox"
  puts "[LOG] Params: #{params.inspect}"
  url = Url.new
  @short_url = url.shorten
  erb :urls
end

get '/:short_url' do
  redirect to(params[:url])
end
