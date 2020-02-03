class Actor
  attr_reader :name
  attr_accessor :characters
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_character(name)
    Character.new(name, self)
  end

  def characters
    Character.all.select { |character| character.actor == self }
  end

  def movies
    self.characters.map { |character| character.movies }
  end

  def self.most_characters
    self.all.max_by { |actor| actor.characters }
  end
end
