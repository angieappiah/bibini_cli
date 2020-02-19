class CLI

  def intro
    popular_sites
    select_sites
    options
    goodbye

    puts "Welcome to Gh Tour"
  end

  def popular_sites
    @sites = popular_sites::sites
  @deals.each_with_index(1) do |sites, i|
    puts "#{i}. {sites.name} - {sites.availability}"
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

      if input.to_i > 0
        the_sites = @sites[input.to_i-1]
        puts  "#{i}. {sites.name} - {sites.availability}"
      elseif input == "popular_sites"
       popular_sites
      else
        puts "No Selection entered"
    end
  end

  def  goodbye
    puts "Thank You Enjoy Your Stay In Ghana"
  end
end
