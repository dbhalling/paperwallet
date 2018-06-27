namespace :youtube do
  desc "Youtube"
  task :promote do
  
  require 'net/http'
  require 'json'
  
  
  API_Key = 'AIzaSyBQAeRsVuWubChoccGqJDDdlXErOnI2YEo'   
      
  url = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=bitcoin&type=video&maxResults=25&key=AIzaSyBQAeRsVuWubChoccGqJDDdlXErOnI2YEo"
      
  uri = URI(url)
  response = Net::HTTP.get(uri)
  puts response
  end
end 
