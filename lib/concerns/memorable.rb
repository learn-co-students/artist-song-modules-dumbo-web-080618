module Memorable

  # def self.all
  #   @@all
  # end
  #
  # def initialize
  #   @@all << self
  # end

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

end
