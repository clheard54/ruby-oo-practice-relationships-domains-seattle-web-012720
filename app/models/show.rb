class Show
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
    Character.all.select { |character| character.shows.include? self }
  end

  def actors
    self.characters.map { |character| character.actor }
  end

  def on_the_big_screen
    Movie.all.select { |movie| movie.title == self.title }
  end
end
