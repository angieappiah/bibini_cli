class Scraper
  def self.scrape
    doc = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359"))
    cards = doc.css(".activity-card")
    cards.each do |card|
    name = card.css(".activity-card-title")
    url = card.css(".activity-card-link").href
    end
  end
end
