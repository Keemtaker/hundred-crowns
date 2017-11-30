
require "json"
require "http"
require "optparse"
require 'review_fetch'


desc "Getting reviews from yelp api"
task :get_reviews => :environment do
  puts ENV['YELP_ID']
  Review.destroy_all
  Destination.all.each do |destination|
    review_fetch = ReviewFetch.new(destination)
    review_fetch.run
  end
end

