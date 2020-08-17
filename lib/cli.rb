class CLI

    def run
        API.fetch_counties
        welcome
        present_user_options
    end

    def welcome # WORKING
      puts "Welcome to Stats-19, your COVID-19 Stat application for the state of Georgia. Please select from one of the following options:"
      puts "          "
    end 

    def present_user_options
        puts "To see a list of Georgia counties, type 1."
        puts "To exit the application, type 2."
        user_input = gets.strip
        if user_input == "1"
            list_counties
            get_county_name
            present_user_option_two
        elsif user_input == "2"
            exit_and_goodbye
        else 
            puts "Input is not recognized, please try again."
            present_user_options
            puts "          "
        end
    end 

    def list_counties
        County.counties 
        puts "          "
        puts "          "
    end 

    def get_county_name # WORKING 
       puts "Please enter county name."
       county_name = gets.strip
       check_input(County.get_stats_by_county(county_name))
       county_name
    end

    def display_stats(stats_data) #WORKING
        #format them and then display to user
        print "
         County Name : #{stats_data.county_name}
         #Reported Cases: #{stats_data.number_reported_cases}
         #Deaths: #{stats_data.deaths}
         #Case Rates: #{stats_data.case_rate}
         #Hospitalizations: #{stats_data.hospitalizations}
        "
    end

    def present_user_option_two # WORKING 
       puts "          "
       puts "Would you like to check another county?"
       puts "Please enter Y for Yes or N for No"
        user_input = gets.strip
        if user_input == "Y" || user_input == "y"
            get_county_name
           present_user_option_two 
        elsif user_input == "yes" || user_input == "Yes"
            get_county_name
            present_user_option_two
        elsif user_input == "n" || user_input == "N"
            exit_and_goodbye
        elsif user_input == "no" || user_input == "No"
            exit_and_goodbye
        else
           puts "Input not recognized, please try again."
           present_user_option_two
        end
    end 
 

    def check_input(county_name) #WORKING - error handling
       if County.counties.include?(county_name.downcase)
        county = County.get_stats_by_county(county_name)
        #display stats to the user 
        display_stats(county)
       else
        puts "This county does not exist, please try again."
        get_county_name
       end 
    end 
    
    def exit_and_goodbye #WORKING
        puts "Thank you for using the Stats-19 app! Please remember to social distance and wear a mask! Have a great day!"
    end 

end
