class API

    URL = "https://services1.arcgis.com/bqfNVPUK3HOnCFmA/arcgis/rest/services/Coronavirus_Cases_in_Georgia/FeatureServer/0/query?where=1%3D1&outFields=CountyName,NumberReportedCases,Deaths,CaseRate,Hospitalizations&returnGeometry=false&outSR=4326&f=json"

    

    def self.fetch_counties #WORKING 
         #fetch data from API and assign to a variable
         @all_counties = JSON.parse(HTTParty.get(URL).response.body)["features"]
         @all_counties.each do |c|
            if c["attributes"]["CountyName"]
                County.new(c["attributes"])
            end 
        end 
    end 
end 