class popular_sites
  attr_accessor :name :availability :url

  def self.sites
  self.scrape_sites
  end

  def self.scrape_sites
    sites = []
  sites << self.scrape_easy_track_ghana
  end

  def self.scrape_easy_track_ghana
    doc = Nokogiri::HTML(open("https://www.easytrackghana.com/tour-ghana_day-trips-accra.ph")
    site = self.new
    site.name = doc.css("h3").text
    site.availability = true
    site.url = doc.search ("https://www.easytrackghana.com/tour-ghana_day-trips-accra.ph")
  end
end
