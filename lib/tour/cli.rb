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
    puts " Enter p for popular sites ".red

    Scraper
    Popular_sites
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
     page = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/accra-architectural-discovery-walking-tour-t15356/"))
     puts "#{page.name}"
     puts "#{page.url}"
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""

      elsif input == "p"
      puts "Here is a list of some popular sites..."
      puts "1. Cape Coast Castle"
      puts "2. Shai Hills"
      puts "3. Boti falls"
      puts "Enter the popular sites you want to visit or type exit".red
      else
        puts "No Selection entered"
      end
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana"
  end
end
