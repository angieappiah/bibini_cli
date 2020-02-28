class Scraper
  def self.scrape
    doc = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359"))
    scrape = doc.css(".activity-card")
    scrape.each do |card|
    name = scrape.css(".activity-card-title")
    url = scrape.css(".activity-card-link")
    end
  end
end
