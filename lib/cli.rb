class CLI

    def run
        API.fetch_counties
        welcome
        present_user_option_one
        #list_counties
        #get_county_name
        #present_user_option_two
    end

    def welcome # WORKING
      puts "Welcome to Stats-19, your COVID-19 Stat application for the state of Georgia. Please select from one of the following options:"
      puts "          "
    end 

    def present_user_option_one
        puts "To see a list of Georgia counties, type 1."
        puts "To exit the application, type 2."
        user_input = gets.strip
        if user_input == "1"
            list_counties
            get_county_name
            present_user_option_two
        elsif user_input == (3..100)
            puts "Input is not recognized, please try again."
            present_user_option_one
        elsif user_input == "2"
            exit_and_goodbye
        else user_input == (3..100)
            puts "Input is not recognized, please try again."
            present_user_option_one
            puts "          "
        end
    end 

    def list_counties
        print API.counties
        puts "          "
        puts "          "
    end 

    def get_county_name # WORKING 
       puts "Please enter county name."
       county_name = gets.strip
       check_input(county_name)
       county_name
    end

    def API.display_stats(stats_data) #WORKING
        #format them and then display to user
        print "
         County Name : #{stats_data["CountyName"]}
         #Reported Cases: #{stats_data["NumberReportedCases"]}
         #Deaths: #{stats_data["Deaths"]}
         #Case Rates: #{stats_data["CaseRate"]}
         #Hospitalizations: #{stats_data["Hospitalizations"]}
        "
    end

    def present_user_option_two # WORKING 
       puts "Would you like to check another county?"
       puts "Please enter Y for Yes or N for No"
        user_input = gets.strip
        if user_input == "Y" 
            get_county_name
           present_user_option_two 
        elsif user_input == "yes"
            get_county_name
            present_user_option_two
        elsif user_input == "y"
            get_county_name
            present_user_option_two
        elsif user_input == "Yes"
            get_county_name
            present_user_option_two
        elsif user_input == "n"
            exit_and_goodbye
        elsif user_input == "No"
            exit_and_goodbye
        else user_input == "N"
           exit_and_goodbye
        end
    end 
 

    def check_input(county_name) #WORKING - error handling
       if API.counties.include?(county_name.downcase)
        API.get_stats_by_county(county_name)
       else
        puts "This county does not exist, please try again."
        get_county_name
       end 
    end 
    
    def exit_and_goodbye #WORKING
        puts "Thank you for using the Stats-19 app! Have a great day!"
    end 

end
