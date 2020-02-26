#require_relative '../lib/bibini_cli'
require 'colorize'
require_relative "./scraper.rb"
require_relative "./site.rb"

class Cli

  def intro
    puts "hello!"
    puts ""
    puts "   |||||||||||||||||||||||||||||||".red.bold
    puts "   |                             |".red.bold
    puts "   |     Welcome to Gh Tour!!    |".red.bold
    puts "   |||||||||||||||||||||||||||||||".red.bold
    puts ""
    puts " Popular sites Information retrieving ......... ".red

    Popular_sites
    sites
    select_sites
    goodbye
  end


  def Popular_sites
    @sites = Popular_sites.sites
  @sites.each_with_index(1) do |sites, i|
    puts "#{i}. {sites.name} - {sites.availability}"
  end
  end

 def sites
   @sites = select_sites.sites
 end

  def select_sites
    sites = []
    input = nil
    while input != "exit"
      puts "Here is a list of popular sites..."
      puts " 1. Cape Coast Castle"
      puts " 2. Shai Hills"
      puts " 3. Boti falls"
      puts "Enter 1,2 or 3 for any of the popular sites listed above or type exit".red
      input = gets.strip
      if input.to_i > 0
          puts  "#{sites}. {sites.name} - {sites.availability}"
        puts ""
     puts "///////////////////////////////////////////////////////////////////////////".red
     puts ""
    # puts "#{concert_choice.name}".bold
        sites = Sites.find_by_index(input.to_i - 1)
        puts  "#{i}. {sites.name} - {sites.availability}"
      elseif input == "popular_sites"
       popular_sites
      else
        puts "No Selection entered"
      end
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana"
  end
end
