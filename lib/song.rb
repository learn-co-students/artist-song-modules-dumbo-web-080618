require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@song = []



  def initialize
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end


  def self.all
    @@song
  end
end
