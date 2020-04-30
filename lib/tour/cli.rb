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
    puts " Enter p for popular sites ".blue
    #give your user the opporunity to input
    #when they input p, run te scraper from the Scraper class

    Scraper
    Popular
    options
    goodbye
  end

  def Popular_sites
    @sites = Popular_sites.scrape_sites
  @sites.each_with_index(1) do |sites, i|
    puts "#{i}. {sites.name} - {sites.availability}"
  end
  end


  def options
    input = nil
    while input != "exit"
     input = gets.strip
      if input.to_i > 0
     doc = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/accra-architectural-discovery-walking-tour-t15356/"))
     puts "#{doc.activity-card}"
     #puts "#{url}"
     puts "WELCOME TO YOUR POPULAR SITE".blue
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""

      elsif input == "p"
      puts "Here is a list of some popular sites..."
      puts "1. Accra Architectural Discovery Walking Tour "
      puts "2. Artistic Side of Industrious Accra: Guided Half-Day Tour"
      puts "3. Kumasi Local Night Life by Public Taxi"
      puts "4. Accra Markets Explorer Half-Day Tour"
      puts "5. Half-Day Old and New Accra Urban Experience Walking Tour"
      puts "6. Accra Markets and Ghana Food Tour"
      puts "7. Kumasi 4-Hour Traditional Cooking Tour and Class"
      puts "Enter the popular sites you want to visit or type exit".blue
      else
        puts "No Selection entered"
      end
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana".blue
  end
end
