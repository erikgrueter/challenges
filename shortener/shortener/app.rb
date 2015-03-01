
require 'sinatra'
configure :development, :test do

require 'pry'
require 'rubygems'
require 'pg'
end

Dir[File.join(File.dirname(__FILE__), 'lib', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

def server_connect
  begin
    connection = PG.connect(dbname:"url_shortener")
    yield(connection)
  ensure
    connection.close
  end
end

def random_string
  random_string = ('a'..'z').to_a.shuffle.first(4).join
  return random_string
end

def shortened_url(string)
  short_url = ("http://www.website/" + string)
end

def create_redirect_url(url_final)
  redirect_url = "http://" + "#{url_final.to_a[0]["long"]}"
end

def insert_urls(long_url,short_url)
  server_connect do |conn|
    conn.exec_params("INSERT INTO urls (long,short) VALUES ('#{long_url}','#{short_url}');")
  end
end

def select_url(short_or_long,long_or_short,ref_url)
  "SELECT #{short_or_long} from urls WHERE #{long_or_short}='#{ref_url}';"
end

get '/' do
  @title = "Welcome to the Link Shortener!"
  short = []
  long = params.to_a
  if !long.empty?
    long_url = long[0][0]
    server_connect do |conn|
      short = conn.exec(select_url("short","long",long_url))
    end
  final_short = short.first["short"]
  end
  erb :index, locals: { short_url: final_short, long_url: long_url }
end

post "/" do
  long_url = params[:url]
  short_url = shortened_url(random_string)
  insert_urls(long_url,short_url)
  redirect("/?#{long_url}")
end

get "/:url" do
 url_final = ''
 server_connect do |conn|
   url_final = conn.exec(select_url("long","short",params[:url]))
 end
   redirect_url = create_redirect_url(url_final)
   redirect("#{redirect_url}")
end
