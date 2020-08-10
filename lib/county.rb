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

  def self.find_by_name(county_name)
    @@counties.find{|county| county.county_name == county_name}
  end
end 
