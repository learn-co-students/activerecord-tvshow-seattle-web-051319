require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    high_show = self.maximum(:rating)
    high_show
  end

  def self.most_popular_show
    pop_show = self.find_by rating: self.highest_rating
    pop_show
    #binding.pry
  end

  def self.lowest_rating
    low_rating = self.minimum(:rating)
    low_rating
  end

  def self.least_popular_show
    least_show = self.find_by rating: self.lowest_rating
    least_show
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end

end
