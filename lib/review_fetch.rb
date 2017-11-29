require "json"
require "http"
require "optparse"
require 'pry-byebug'

class ReviewFetch

  def initialize(destination)
   @destination = destination

   @restaurant = @destination.name
   @address = @destination.address
  end

  CLIENT_ID = "X3cQsdbtqNiIxj3hkaUleQ"
  CLIENT_SECRET = "9eE6DOMSEgnjR92xtlGTAZsOLGFRUsPeeU6V0Gv2RQESPPLVH4laTOSFrDT8yKs3"

  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"
  TOKEN_PATH = "/oauth2/token"
  GRANT_TYPE = "client_credentials"
  REVIEWS = "/reviews"


  DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  DEFAULT_TERM = "dinner"
  DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 1

  def bearer_token
  url = "#{API_HOST}#{TOKEN_PATH}"

  raise "Please set your CLIENT_ID" if CLIENT_ID.nil?
  raise "Please set your CLIENT_SECRET" if CLIENT_SECRET.nil?

  params = {
    client_id: CLIENT_ID,
    client_secret: CLIENT_SECRET,
    grant_type: GRANT_TYPE
  }

  response = HTTP.post(url, params: params)
  parsed = response.parse

  "#{parsed['token_type']} #{parsed['access_token']}"
  end


  def run
    puts "Getting reviews for #{@destination.name}"

    business_id = search()
    if business_id
      destination_reviews = reviews(business_id)
      create_reviews(destination_reviews)
      puts "Reviews created for #{@destination.name}"
    else
      puts "Couldn't find #{@destination.name} on Yelp"
    end
  end




  def search
    url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: @restaurant,
      location: @address,
      limit: SEARCH_LIMIT

    }

    response = HTTP.auth(bearer_token).get(url, params: params)

    response_hash = response.parse
    return nil if response_hash['error'] || response_hash['businesses'].empty?
    response_hash['businesses'].first['id']
  end


  def reviews(business_id)
    url = "#{API_HOST}#{BUSINESS_PATH}#{business_id}#{REVIEWS}"
    response = HTTP.auth(bearer_token).get(url)
    response_hash = response.parse
      response_hash['reviews'].map do |review|
     { content: review['text'], content_url: review['url'], author: review['user']['name'], rating: review['rating'] }
   end
  end


  def create_reviews(review_hashes)
     review_hashes.each do |review_hash|
     review = Review.new(review_hash)
     review.destination = @destination
     review.save
     end
  end

end

#I need to create a review in my database
#so first i need to specify review params
#auhor, content, rating and destination_id
#so all these has to occur in a review_create method
