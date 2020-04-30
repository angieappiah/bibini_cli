#require_relative '../lib/bibini_cli'
require 'colorize'
require_relative "./scraper.rb"
require_relative "./site.rb"

class Cli

  def intro
    puts "Hey!".red
    puts ""
    puts "   |||||||||||||||||||||||||||||||".red.bold
    puts "   |                             |".red.bold
    puts "   |     Welcome to Gh Tour!!    |".red.bold
    puts "   |||||||||||||||||||||||||||||||".red.bold
    puts ""
    puts " Enter p for popular sites ".blue
    #give your user the opporunity to input
    #when they input p, run te scraper from the Scraper class

    #Scraper
    #Popular_sites
    options
    goodbye
  end

  #def scraper

  #end



  def options
    input = nil
    while input != "exit"
     input = gets.strip
      if input.to_i > 0
     doc = Nokogiri::HTML(open("https://touringghana.com/top-10-tourist-attractions/"))

     puts "WELCOME TO YOUR POPULAR SITE".blue
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""

      elsif input == "p"
      puts "Here is a list of some popular sites..."
      puts "#{}"
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
