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
    genre_hash = {}
    @@genres.each do |type|
      if genre_hash.include?(type)
        genre_hash[type] = genre_hash[type] + 1
      else
        genre_hash[type] = 1
      end 
    end 
  end 
    
end 
