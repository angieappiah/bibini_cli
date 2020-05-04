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

     #Scraper.scrape_site
    #give your user the opporunity to input
    #when they input p, run te scraper from the Scraper class

    #scraper_site
    Scraper.scrape_site_names("https://touringghana.com/top-10-tourist-attractions/")
    popular_sites
    options
    goodbye
  end

  def popular_sites
    @sites = ['top_tourist_attractions_in_Ghana']
    puts "There are 8 most popular sites in Ghana"
      puts " Press p for the list of all the popular sites ".blue
     @sites.each.with_index(1)do |site, index|
        puts "#{index}, {site}"
       end
  end



  def options
    input = nil
    while input != "exit"
     input = gets.strip
      if input.to_i > 0

     puts "WELCOME TO YOUR POPULAR SITE".blue
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""

      elsif input == "p"
      puts "Here is a list of some popular sites..."
      #Once you've made the first scrape and created the instances, you list out the instances here
      #by calling on the SIte class, iterating over eachs ite, and displaying each site's name
      puts "Please enter a number (for more details) or type exit".blue
      else
        puts "No Selection entered"
      end
    end
  end

def more_details_on_sites
  puts "Please enter a number (for more details) or type exit".blue
puts "#{Scraper.scrape_site_blurb}"
end


  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana".blue
  end
end
