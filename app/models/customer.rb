class Customer

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def restaurants
    Review.all.map {|review| review.customer == self}
  end

  def num_reviews
    restaurants.count
  end

  def self.all
    @@all
  end

  def self.all_names
    self.all.map {|customer| customer.name}
  end

  def self.find_by_name(name)
    self.all_names.find {|full_name| full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all_names.select {|full_name| full_name.split[0] == name}
  end

end
