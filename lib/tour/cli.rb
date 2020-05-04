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
    Scraper.scrape_site_names('https://touringghana.com/top-10-tourist-attractions/')
    get_popular_places
    list_popular_places
    more_info
    options
    goodbye
  end

  def get_popular_places
  @places = ['Cape_Coast_Castle', 'Paga_Crocodile_Pond', 'Nzulezo_Stilt_Village', 'Lake_Volta', 'Boti_Falls']
  puts "There are 5 most popular sites in Ghana"
  end


  def list_popular_places
  @places.each.with_index(1)do |places, index|
  puts "#{index}, #{places}"
  end
  end

  def more_info
    puts "For more info press any number"
    puts "Not interested?".red
    puts " Press p for the list of all the popular sites ".blue

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
      puts "Here is a list of all other popular sites..."
      #Once you've made the first scrape and created the instances, you list out the instances here
      #by calling on the SIte class, iterating over eachs ite, and displaying each site's name
      puts "Please enter a number (for more details) or type exit".blue
      else
        puts "No Selection entered"
      end
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana".blue
  end
end
