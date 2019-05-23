class Show < ActiveRecord::Base
  
  def self.highest_rating
    return self.maximum(:rating)
  end
  
  def self.most_popular_show
    return self.find_by_rating(self.highest_rating)
  end
  
  def self.lowest_rating
    return self.minimum(:rating)
  end
  
  def self.least_popular_show
    return self.find_by_rating(self.lowest_rating)
  end
  
  def self.ratings_sum
    return self.sum(:rating)
  end
  
  def self.popular_shows
    return self.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order
    self.order(:name)
  end
    
  
  
end