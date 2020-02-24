require_relative "./scraper.rb"

class Popular_sites
  attr_accessor :name, :availability, :url

  def self.sites
  self.scrape_sites
  end

  def self.scrape_sites
    sites = []
  sites << self.scrape_get_your_guide
  end

#  def self.scrape_get_your_guide
#    doc = Nokogiri::HTML(open("/https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359"))
#    site = self.new
#    site.name = doc.css("h3").text
#    site.availability = true
#    site.url = doc.search ("/https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359")
#  end
end
