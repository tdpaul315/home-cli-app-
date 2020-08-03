Welcome to the COVID-19 Stats App! 

INTRODUCTION:
This app was created to provide up-to-date statistics on the COVID-19 cases reported in the state of Georgia. By inputting a county located in the state of Georgia, the Stats-19 App will return numerical data on reported cases, deaths, case rates, and hospitalizations. 

APP BACKGROUND: 
Given the current pandemic we are all facing with COVID-19, I thought an application that provides these statistics can be used as not only a learning tool, but a way to help impact the prevention of these numbers rising.

PROGRAMMING LANGUAGE:
Built in Ruby - Using Visual Studio Code


PREREQUISITES:
- Run bundle init in the command line 

Type bundle init, then type return 

Now all of the gems needed to complete the project are made available to install. 

- In the GEMFILE:  require pry, httparty, and json by typing the following:

require 'pry'
require 'httparty'
require 'json'

Run 'bundle install' from the command line; this installs the gems that were specified as required

To establish the development environment, the environment configuration must be completed. In the configuration folder, a file 'enviromental.rb' is created to house the code needed in order for the program to run properly. The following is input in addition to the required gems: 

require 'pry' 
...
#require_relative '../lib/api.rb'
#require_relative '../lib/cli.rb'
#require_relative '../lib/stats.rb'

INSTRUCTIONS: 

To run the program from the command-line, Type bin/run. 

You will be greeted with the welcome message: 

"Welcome to Stats-19! Your COVID-19 Stat appication for the state of Georgia!" 
"Please enter county name." 

Note: this application is built for Georgia counties ONLY (a complete list of counties can be found here https://www.alphalists.com/list/alphabetical-list-georgia-counties

ex: Cobb, Hall, Forsyth 

After entering the county name, Type enter and you will get a formatted list of the data retrieved from the API.

A prompt will appear at the bottom of the data that asks "Do you want to check another county?" If Y (yes) is input, then you will be prompted to enter another county. Else, if the input is N (No), the exit greeting and application exit will occur. 

If a invalid county is input, an error message will appear and the prompt to enter county name will appear again. 

Enjoy! 

