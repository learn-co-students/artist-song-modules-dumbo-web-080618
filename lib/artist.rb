require 'pry'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # @@artists << self
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end



#MEMORABLE
# def self.reset_all
#   self.all.clear
# end
#
# def self.count
#   @@artists.count
# end

#FINDABLE
# def self.find_by_name(name)
#   @@artists.detect{|a| a.name == name}
# end

#PARAMABLE
# def to_param
#   name.downcase.gsub(' ', '-')
# end
