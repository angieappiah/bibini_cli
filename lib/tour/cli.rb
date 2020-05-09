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

     #Scraper.scrape_site
    #give your user the opporunity to input
    #when they input p, run te scraper from the Scraper class

    #scraper_site
  TourSiteScraper.scrape_sites
    #Site.print_all_sites
    sites
    get_description
    more_info
    options
    goodbye
  end

  def sites
    TourSiteScraper.scrape_sites.each.with_index(1) do |sites, index|
    puts index
    puts sites.name
    puts sites.description
    #puts "#{elements.url}".yellow
    #binding.pry
    #puts description
    # we cannot hard code, we need to iterate over the instances of sites we made in the scraper
    # and display them here
  end
  end

  def get_description
  puts "Please enter a number (for details) or type exit".blue
  input = nil
  while input != "exit"
   input = gets.strip
    if input.to_i > 0
      puts TourSiteScraper.scrape_sites.each do text
    #else
    # "No Selection entered"
  end
  end
  end
  end

  def more_info
    puts "FOR MORE INFO PRESS ANY NUMBER".red
    puts "Not interested? type exit".red
    TourSiteScraper.scrape_sites
  end


  def options
    TourSiteScraper.scrape_sites
    input = nil
    while input != "exit"
     input = gets.strip
      if input.to_i > 0
     puts "WELCOME TO YOUR POPULAR SITE".blue
     puts "///////////////////////////////////////////////////////////////////////////".red
      #elsif input == "p"
      #puts " Press p for the list of all the popular sites ".blue
      #Once you've made the first scrape and created the instances, you list out the instances here
      #by calling on the SIte class, iterating over each site, and displaying each site's name
      puts "Please enter a different number (for more details) or type exit".blue
      else
        puts "No Selection entered"
      end
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana".blue
  end
end
