namespace :youtube do
  desc "Youtube"
  task :promote do
  
  require 'net/http'
  require 'json'
  
  
  API_Key = 'AIzaSyBQAeRsVuWubChoccGqJDDdlXErOnI2YEo'
  baseUrl = 'https://www.googleapis.com/youtube/v3/'
      
  url = "#{baseUrl}search?part=snippet&q=bitcoin&type=video&maxResults=25&key=#{API_Key}"
      
  uri = URI(url)
  response = Net::HTTP.get(uri)
  youTube_data = JSON.parse(response)
  puts youTube_data["items"][0]["snippet"]["title"]
  puts youTube_data["items"][0]["snippet"]["channelId"]
  puts youTube_data["items"][0]["id"]["videoId"]
  
  
  
  end
end 
