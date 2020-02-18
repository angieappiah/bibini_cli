class CLI

  def intro
    popular_sites
    select_sites
    options
    goodbye

    puts "Welcome to Gh Tour"
  end

  def popular_sites
    @site = ['cape_coast_castle', 'shai_hill', 'boti_falls']
  end

  def select_site
    @site.each do
      "site"
  end

  def options
    input = nil
    while input != "exit"
      puts "Enter the site you want to visit or type exit"
      input = get.strip
      case input
      when "1"
        puts "Welcome to the cape coast castle"
      when "2"
        puts "Welcome to shai hill"
      when "3"
        puts "Welcome to botifalls"
      when "popular"
        popular_sites
      else
        puts "No Selection entered"
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana"
  end
end
