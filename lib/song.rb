require 'pry'

class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres = []
  @@artists = []

  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    @@genres.map do |type|
      if @@genres.include?(type)
        binding.pry
        @@genres = {type = 1
      else
        @@genres[type] = 1
      end 
    end 
  end 
    
end 
