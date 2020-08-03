class CLI

    def run
        API.fetch_counties
        welcome
        get_county_name
        present_user_option
    end

    def welcome # WORKING
    puts "Welcome to Stats-19, your COVID-19 Stat application for the state of Georgia."
    end 

    def get_county_name # WORKING 
       puts "Please enter county name."
       county_name = gets.strip
       check_input(county_name)
       return county_name
    end

    def present_user_option # WORKING 
       puts "Would you like to check another county?"
       puts "Please enter Y for Yes or N for No"
        #user_input = gets.strip
        #if user_input == "Y"
           # get_county_name
           #present_user_option
       # else user_input == "N"
          # exit_and_goodbye
        #end 
    end 

    #def check_input(county_name) #WORKING - error handling
     #  if API.counties.include?(county_name.downcase)
      #  API.get_stats_by_county(county_name)
       #else
        #puts "This county does not exist, please try again."
        #get_county_name
       #end 
    #end 
    
    #def exit_and_goodbye #WORKING
     #   puts "Thank you for using the Stats-19 app! Have a great day!"
    #end 

end
