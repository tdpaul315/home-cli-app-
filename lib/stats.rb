class Stats
  attr_accessor :county_name
  attr_reader :reported_cases, :hospitalizations, :deaths

  @@stats = []


  def initialize(county_name)
    @county_name = county_name
    @reported_cases = reported_cases
    @hospitalizations = hospitalizations
    @deaths = deaths
    @@stats << self
  end

  


end
