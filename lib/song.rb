require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    self.new.save
    self.all.last
  end
  
  def self.new_by_name(name)
    song = self.new
    #binding.pry
    song.name = name
    #binding.pry
  end
end

#binding.pry