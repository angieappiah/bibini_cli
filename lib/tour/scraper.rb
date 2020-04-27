class Scraper

def self.scrape_sites(url)
    doc = Nokogiri::HTML(open("Top Tourist Attractions in Ghana - touringghana.com"))
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
