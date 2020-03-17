
class Scraper

  attr_accessor :parse_page

  def initialize
  page = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/accra-architectural-discovery-walking-tour-t15356/"))
  page.css(".activity-card")
  end

  def name
     sites.css(".activity-card-title").css
  end

  def get_url
     sites.css(".activity-card-link").css
  end

  def sites
    parse_page.css(".activity-card")
  end

end
