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

    Scraper.scrape
    Popular_sites
    sites
    goodbye
  end

  def Popular_sites
    @sites = Popular_sites.scrape_sites
  @sites.each_with_index(1) do |sites, i|
    puts "#{i}. {sites.name} - {sites.availability}"
  end
  end


  def sites
    input = nil
    while input != "exit"

      input = gets.strip
      if input.to_i > 0
          puts  "#{sites.activity-card}"
        puts ""
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""

      elsif input == "p"
      puts "Here is a list of some popular sites..."
      puts "Cape Coast Castle"
      puts "Shai Hills"
      puts "Boti falls"
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
