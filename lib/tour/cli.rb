#require_relative '../lib/bibini_cli'
require 'colorize'
require_relative "./scraper.rb"
require_relative "./site.rb"
require 'pry'

class Cli

  def intro
    puts "Hello!".red
    puts ""
    puts "   |||||||||||||||||||||||||||||||".red.bold
    puts "   |                             |".red.bold
    puts "   |     Welcome to Gh Tour!!    |".red.bold
    puts "   |||||||||||||||||||||||||||||||".red.bold
    puts ""
    puts "These are the most popular sites in Ghana ...........".blue

    "https://touringghana.com/top-10-tourist-attractions/"


  TourSiteScraper.scrape_sites
    list_sites
    options
    goodbye
  end


  def options
    puts "Please enter a number (for details) or type exit".blue
    input = nil
    while input != "exit"
     input = gets.strip
      if input.to_i > 0
        more_info(input)

      else
        puts "No Selection entered"
      end
    end
  end


    def list_sites
     Site.all.each_with_index do |site, index|
     indexplusone = index + 1
     puts "#{indexplusone}. #{site.name}"
     puts "#{site.url}".red
     puts ""
    end
   end

  def more_info(input)
    puts "WELCOME TO YOUR POPULAR SITE".blue
    puts "///////////////////////////////////////////////////////////////////////////".red
    puts ""
    puts Site.all[input.to_i-1].description
    puts ""
     #Once you've made the first scrape and created the instances, you list out the instances here
     #by calling on the SIte class, iterating over each site, and displaying each site's name
    puts "Please enter a different number (for more details) or type exit".blue
  end


  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana".blue
  end
end
