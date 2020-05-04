require_relative "./site.rb"
class Scraper

  attr_reader :site_name, :location, :url

  def initialize (name, location)
    @name = name.capitalize
    @location = location.capitalize
    @url = "https://touringghana.com/top-10-tourist-attractions/".sub(" ", "--")

  end

  def parse_url(url)
    html_to_elements = open(url)
    parsed_html_elements = Nokogiri::HTML(html_to_elements)
  end


  def self.scrape_site
   url = "https://touringghana.com/top-10-tourist-attractions/".sub(" ", "--")
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   site_elements = parsed_html_elements.css
   site_name = site_elements.css('h3').text
   

   #site_elements.css('h3').class('a')
   #end

  end

    def self.scrape_site_blurb(url)
      html_to_elements = open(url)
      parsed_html_elements = Nokogiri::HTML(html_to_elements)
    end

end
