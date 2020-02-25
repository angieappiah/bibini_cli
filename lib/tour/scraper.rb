class Scraper
  def scrape
    doc = Nokogiri::HTML(open("/https://www.getyourguide.com/accra-l506/half-day-old-and-new-accra-urban-experience-walking-tour-t15359"))
    puts doc.css("h1").text
  end

  def sites
    sites = "h1"
  end
end
