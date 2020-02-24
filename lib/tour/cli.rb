#require_relative '../lib/bibini_cli'

class CLI

  def intro
    puts "hello"
    puts "Welcome to Gh Tour"
    Popular_sites
    #select_sites
    options
    goodbye
  end

  def Popular_sites
    @sites = Popular_sites.sites
  @deals.each_with_index(1) do |sites, i|
    puts "#{i}. {sites.name} - {sites.availability}"
  end
  end

  #def select_sites
  #  @site.each do
  #    "site"
  #  end
  #end

  def options
    input = nil
    while input != "exit"
      puts "Enter the sites you want to visit or type exit"
      input = gets.strip

      if input.to_i > 0
        the_sites = @sites[input.to_i-1]
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
