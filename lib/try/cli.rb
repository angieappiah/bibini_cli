class CLI

  def intro
    popular_sites
    #select_sites
    #options
    goodbye
    puts "Welcome to Gh Tour"
  end

  def popular_sites
    @site = ['cape_coast_castle', 'shai_hill', 'boti_falls']
  end

  def select_user_site
    @site.each do
      "site"
    end
    puts "Ready to visit "#{site}"
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana"
  end

end
