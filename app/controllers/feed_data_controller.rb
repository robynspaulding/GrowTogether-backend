class FeedDataController < ApplicationController 
  
  def fetch_data
    require 'rss'
    require 'open-uri'
    require 'nokogiri'

    url = 'https://childandfamilyblog.com/feed/'
    #alternate urls: https://parentingscience.com/parenting-blog/feed/

    begin
      URI.open(url) do |rss|
        data = []
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

        render json: { data: data }
      end
      rescue StandardError => e
        render json: { error: "Failed to fetch and parse RSS feed: #{e.message}" }, status: :internal_server_error
      end
  end
end