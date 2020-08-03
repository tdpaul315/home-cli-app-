Welcome to the COVID-19 Stats App! 

INTRODUCTION:
This app was created to provide up-to-date statistics on the COVID-19 cases reported in the state of Georgia. By inputting a county located in the state of Georgia, the Stats-19 App will return numerical data on reported cases, deaths, case rates, and hospitalizations. 

APP BACKGROUND: 
Given the current pandemic we are all facing with COVID-19, I thought an application that provides these statistics can be used as not only a learning tool, but a way to help impact the prevention of these numbers rising.

PROGRAMMING LANGUAGE:
Built in Ruby - Using Visual Studio Code

PREREQUISITES:
- Run bundle init

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

Now its time to create! 

