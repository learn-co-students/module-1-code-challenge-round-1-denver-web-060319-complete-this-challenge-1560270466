class Customer
  attr_reader :first_name, :last_name

  @@all = []


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    @review = Review.new(restaurant, content, rating)
    @reviews << {:restaurant => restaurant, :content => content, :rating => rating}
  end

  def num_reviews
    if @reviews.length > 0
      @reviews.length
    else
      "This user has not submitted any reviews yet"
    end
  end

  def restaurants
    @reviews.map {|review| review[:restaurant]}
  end

  def self.all
    @@all
  end

end
