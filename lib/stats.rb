class Stats
  attr_accessor :county_name

  @@all = []


  def initialize(county_name) #WORKING
    @county_name = county_name
    @@all << self
  end

  def self.all 
    @@all 
  end 
end
