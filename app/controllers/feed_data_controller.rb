class FeedDataController < ApplicationController 
  
  def fetch_data
    require 'rss'
    require 'open-uri'
    require 'nokogiri'

    urls = [
      'https://childandfamilyblog.com/play/feed/',
      'https://childandfamilyblog.com/social-emotional-development/feed'
      
      # Add more URLs here
    ]

    data = []

    urls.each do |url|
      begin
        URI.open(url) do |rss|
          feed = RSS::Parser.parse(rss)
          
          feed.items.each do |item|
            fetched_data = {
              title: item.title,
              description: item.description,
              link: item.link,
              images: []
            }
            
            # Access the content_encoded tag
            content_encoded = Nokogiri::HTML(item.content_encoded)

            # Use Nokogiri to extract image URLs from img tags within content_encoded
            content_encoded.css('img').each do |img_tag|
              image_url = img_tag['src']
              fetched_data[:images] << image_url if image_url.present?
            end

            data.push(fetched_data)
          end
        end
      rescue StandardError => e
        # Handle errors, maybe log them
        puts "Failed to fetch and parse RSS feed from #{url}: #{e.message}"
      end
    end

    render json: { data: data }
  end
end
