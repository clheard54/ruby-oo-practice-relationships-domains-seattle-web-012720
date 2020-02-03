class Movie
  attr_reader :title
  attr_accessor :characters
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    MovieCharacter.all.select { |character| character.movies.include? self }
  end

  def actors
    self.characters.map { |character| character.actor }
  end

  def self.most_actors
    casts = self.all.map { |movie| movie.actors }
    casts.max_by { |x| x.length }
  end
end
