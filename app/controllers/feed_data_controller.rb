class FeedDataController < ApplicationController 
  
  def fetch_data
    require 'rss'
    require 'open-uri'
    url = 'https://childandfamilyblog.com/feed/'
    URI.open(url) do |rss|
      data = []
      feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
        fetched_data = {title: item.title, description: item.description, link: item.link}
        data.push(fetched_data)
         #use link as the unique id 
      end
      render json: { data: data }
    end
  end
  
end
