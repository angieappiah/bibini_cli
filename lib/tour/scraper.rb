require 'pry'
class Scraper

  attr_reader :site_name, :location, :url

  def initialize (site_name, location)
    @site_name = site_name.capitalize
    @location = location.capitalize
    @url = "https://touringghana.com/top-10-tourist-attractions/".sub(" ", "--")

  end

  def parse_url(url)
    html_to_elements = open(url)
    parsed_html_elements = Nokogiri::HTML(html_to_elements)
  end


  def self.scrape_site
   url = "https://touringghana.com/top-10-tourist-attractions/"
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   site_elements = parsed_html_elements.css
   #site_elements.css('h3').class('a')
   #end

  end

    def self.scrape_site_blurb(url)
      html_to_elements = open(url)
      parsed_html_elements = Nokogiri::HTML(html_to_elements)
    end

end
