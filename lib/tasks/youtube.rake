namespace :youtube do
  desc "Youtube"
  task :promote do
  
  require 'net/http'
  require 'json'
  
  
  API_Key = 'AIzaSyBQAeRsVuWubChoccGqJDDdlXErOnI2YEo'
  baseUrl = 'https://www.googleapis.com/youtube/v3/'
  publishedAfter = ((DateTime.now.getutc - 1.days).to_datetime.rfc3339).slice(0..16) + '00Z'
  puts publishedAfter
      
  url = "#{baseUrl}search?part=snippet&q=bitcoin&type=video&maxResults=25&publishedAfter=#{publishedAfter}&key=#{API_Key}"

  puts url
      
  uri = URI(url)
  response = Net::HTTP.get(uri)
  youTube_data = JSON.parse(response)
  ytTitle = youTube_data["items"][0]["snippet"]["title"]
  ytChannelId = youTube_data["items"][0]["snippet"]["channelId"]
  ytVideoId =  youTube_data["items"][0]["id"]["videoId"]
  
# puts youTube_data
  
  puts ytTitle
  puts ytChannelId
  puts ytVideoId
  
  end
end 
