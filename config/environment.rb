require 'pry'
require 'httparty'
require "json", ">= 2.3.0"
#require 'open_uri_redirections'

require_relative '../lib/api.rb'
require_relative '../lib/cli.rb'
require_relative '../lib/stats.rb'

cli = CLI.new
cli.run
