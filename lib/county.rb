class County
  attr_accessor :county_name, :number_reported_cases, :deaths, :case_rate, :hospitalizations

  @@all = []
  
  


  def initialize(attribute_hash) #WORKING
    @county_name = attribute_hash["CountyName"].downcase
    @number_reported_cases = attribute_hash["NumberReportedCases"]
    @deaths = attribute_hash["Deaths"]
    @case_rate = attribute_hash["CaseRate"]
    @hospitalizations = attribute_hash["Hospitalizations"]
    @@all << self
  end

  def self.all 
    @@all 
  end 
end 
