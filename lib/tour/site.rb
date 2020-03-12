require_relative "./scraper.rb"
require_relative "./cli.rb"

class Popular_sites
  attr_accessor :name, :availability, :url

  @@all = []

 def initialize (name, availability, url)
   @name = name
   @availability = availability
   @url = url
   @@all << self
 end

 def self.all
   @@all
 end

 def self.find_by_index(index)
   @@all[index]
 end


  #def self.sites
  #  self.sites =
  #self.scrape_sites
#  end

  def self.scrape_sites
    sites = []
  sites << self.scrape_get_your_guide
  end

 def self.scrape_get_your_guide
   doc = Nokogiri::HTML(open("https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359"))

    name = doc.css("#activity-title")
    description = doc.css("#overview.content")
    availability = true
    url = doc.css ("https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359")
    site = self.new(name, availability,url)
  end

end
