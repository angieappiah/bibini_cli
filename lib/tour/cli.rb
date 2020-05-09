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
     #Scraper.scrape_site
    #give your user the opporunity to input
    #when they input p, run te scraper from the Scraper class


  TourSiteScraper.scrape_sites
    list_sites
    options
    goodbye
  end


  def options
    puts "Please enter a number (for details) or type exit".blue
    #TourSiteScraper.scrape_sites
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
        #binding.pry
        puts "#{index}. #{site.name}"
        puts "#{site.url}".red
        puts ""
      end
    end

  def more_info(input)
    puts "WELCOME TO YOUR POPULAR SITE".blue
    puts "///////////////////////////////////////////////////////////////////////////".red
#binding.pry
  puts Site.all[input.to_i-1].description
     #elsif input == "p"
     #puts " Press p for the list of all the popular sites ".blue
     #Once you've made the first scrape and created the instances, you list out the instances here
     #by calling on the SIte class, iterating over each site, and displaying each site's name
     puts "Please enter a different number (for more details) or type exit".blue
  end


  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana".blue
  end
end
