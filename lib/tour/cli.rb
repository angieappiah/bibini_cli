#require_relative '../lib/bibini_cli'
require 'colorize'
require_relative "./scraper.rb"
require_relative "./site.rb"

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
    Scraper.scrape_site('https://touringghana.com/top-10-tourist-attractions/')
    Scraper.scrape_print_all_site
    #get_popular_sites
    #site
    print_all_site
    more_info
    options
    goodbye
  end

  def print_all_site
  Scraper.scrape_print_all_site
    if input.to_i > 0
      puts "#{description}"
    # we cannot hard code, we need to iterate over the instances of sites we made in the scraper
    # and display them here
  end
  end

  def more_info
    puts "FOR MORE INFO PRESS ANY NUMBER".red
    puts "Not interested? type exit".red
    #puts " Press p for the list of all the popular sites ".blue
    Scraper
  end

  def site
  Scraper.scrape_site
    puts "#{site_name}"
  end

  def options
    input = nil
    while input != "exit"
     input = gets.strip
      if input.to_i > 0
     puts "WELCOME TO YOUR POPULAR SITE".blue
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""
     puts "#{description}"
      #elsif input == "p"
      #puts "Here is a list of all other popular sites..."
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
