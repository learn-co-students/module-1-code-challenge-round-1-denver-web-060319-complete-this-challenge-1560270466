class Review

  @@all = []

  def initialize(restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating
  end

  def self.all
    @@all
  end

end
