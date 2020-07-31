class Stats
  attr_accessor :county_name
  attr_reader :reported_cases, :hospitalizations, :deaths


  def initialize(county_name)
    @county_name = county_name
    @reported_cases = reported_cases
    @hospitalizations = hospitalizations
    @deaths = deaths
  end

  


end
