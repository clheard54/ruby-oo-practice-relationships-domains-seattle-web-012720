class MovieCharacters
  attr_reader :movie
  attr_accessor :characters
  @@all = []

  def initialize(movie, character)
    @character = character
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end
end
