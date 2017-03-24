require 'pry'
class Show < ActiveRecord::Base
  attr_accessor :season
  #return highest rating
  def self.highest_rating
    #select from db the show with highest rating
    #select * from db where rating = MAX(rating)
    Show.maximum("rating")
  end

  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating)[0]
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating)[0]
  end

  def self.ratings_sum
    #return an integer with the sum of all the ratings in the DB
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    #selects all then orders the shows by the alphabetical order of their names
    Show.order(:name)
  end

#client = Client.order(:first_name)
end
