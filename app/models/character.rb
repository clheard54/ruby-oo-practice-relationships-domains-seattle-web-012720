class Character
  attr_reader :actor
  attr_accessor :name, :movies, :shows
  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def add_movie(movie)
    self.movies.push(movie)
  end

  def add_show(show)
    self.shows.push(show)
  end

  def self.most_appearances
    tally = {}
    self.all.each { |character|
      tally[character] = character.movies.length + characters.shows.length
    }
    tally.each { |k, v| return k if v = tally.values.max }
  end
end
