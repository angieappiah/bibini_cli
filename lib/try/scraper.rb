class Scraper
  def scrape
    doc = Nokogiri::HTML(open("https://www.easytrackghana.com/tour-ghana_day-trips-accra.ph"))
    puts doc.css("h3")
  end
end
