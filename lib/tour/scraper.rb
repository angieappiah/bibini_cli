class Scraper

def self.scrape_sites
    doc = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/accra-architectural-discovery-walking-tour-t15356/"))
    doc.css (".activity-card")
end

  attr_accessor :cards, :name, :url, :description

  def cards
     doc.css(".activity-card")
     cards.each do |cards|
     end
  end

  def name
    card.css(".activity-card_title")
  end


  def url
    card.css(".activity-card-link").href
  end

  def description
    doc.css("#overview.content")

  end

end
