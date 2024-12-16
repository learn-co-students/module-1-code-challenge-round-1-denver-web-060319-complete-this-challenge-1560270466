class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating}
    ratings.reduce(:+)/ratings.count
  end

  def longest_review
    review_lengths = reviews.map {|review| review.content.length}.sort
    reviews.select {|review| review.content.length == review_lengths[-1]}
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

end
