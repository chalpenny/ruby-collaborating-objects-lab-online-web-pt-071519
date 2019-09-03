require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new_song = Song.new(song)
    new_song.artist = artist
    new_song
  end

  def artist_name= (artist)
    @@all << self.artist = Artist.find_or_create_by_name(artist)
  end

  end

  end
end
