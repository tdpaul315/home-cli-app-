class County
  attr_accessor :county_name, :number_reported_cases, :deaths, :case_rate, :hospitalizations

  @@counties = []
  
  
  def initialize(attribute_hash) #WORKING
    @county_name = attribute_hash["CountyName"].downcase
    @number_reported_cases = attribute_hash["NumberReportedCases"]
    @deaths = attribute_hash["Deaths"]
    @case_rate = attribute_hash["CaseRate"]
    @hospitalizations = attribute_hash["Hospitalizations"]
    @@counties << self
  end

  def self.all 
    @@counties 
  end 
  
  def self.counties #WORKING
    @@counties.map do |c|
      c.county_name
    end  
  end 

  def self.get_stats_by_county(county_name) #WORKING - POSSIBLE REFACTOR - could replace whole if statement with  - all_counties.find_by{county["attirubtes"]["countyname"] == county_name}
    # pull out results for county_name
    # go over each one and find the one who's county name == county_name
    @@counties.each do |county|
        if county.county_name && (county.county_name.downcase == county_name.downcase)
            return county
        end 
    end
  end
end 
