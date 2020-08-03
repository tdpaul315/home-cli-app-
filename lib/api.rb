class API

    URL = "https://services1.arcgis.com/bqfNVPUK3HOnCFmA/arcgis/rest/services/Coronavirus_Cases_in_Georgia/FeatureServer/0/query?where=1%3D1&outFields=CountyName,NumberReportedCases,Deaths,CaseRate,Hospitalizations&returnGeometry=false&outSR=4326&f=json"

    def self.get_stats_by_county(county_name) #WORKING - POSSIBLE REFACTOR - could replace whole if statement with  - all_counties.find_by{county["attirubtes"]["countyname"] == county_name}
        # pull out results for county_name
        # go over each one and find the one who's county name == county_name
        @all_counties.each do |county|
            if county["attributes"]["CountyName"] && (county["attributes"]["CountyName"].downcase == county_name.downcase)
             # pass fetch results for county_name to display_stats method
                API.display_stats(county["attributes"])
                break
            end 
        end
    end

    def self.counties #WORKING
        array = []
        @all_counties.each do |c|
            if c["attributes"]["CountyName"]
                array <<  c["attributes"]["CountyName"].downcase
            end 
        end 
        array
    end 

    #def self.fetch_counties #WORKING 
         # fetch data from API and assign to a variable
        # @all_counties = JSON.parse(HTTParty.get(URL).response.body)["features"]
   # end 

    #def self.display_stats(stats_data) #WORKING
        #format them and then display to user
        #print "
         #County Name : #{stats_data["CountyName"]}
         #Reported Cases: #{stats_data["NumberReportedCases"]}
         #Deaths: #{stats_data["Deaths"]}
         #Case Rates: #{stats_data["CaseRate"]}
         #Hospitalizations: #{stats_data["Hospitalizations"]}
        # "
    #end
end 