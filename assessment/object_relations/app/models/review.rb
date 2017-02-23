class Review

    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
    end

    def self.all
      @@all
    end

    def self.customer
      self.each do |all|
        all.customer
      end
    end

    def add_review
      new_review = Review.new(customer, review)
      @@all << new_review
    end


end
