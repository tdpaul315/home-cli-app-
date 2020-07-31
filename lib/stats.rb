class Stats
  attr_accessor :county_name, :reported_cases, :hospitalizations, :deaths


  def initialize(county_name, reported_cases, hospitalizations, deaths)
    @county_name = county_name 
    @reported_cases = reported_cases
    @hospitalizations = hospitalizations
    @deaths = deaths 
  end

  


end
