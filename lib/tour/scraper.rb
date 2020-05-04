require_relative "./site.rb"
class Scraper

  attr_reader :site_names, :location, :url

  def initialize (site_names, location)
    @site_names = site_names.capitalize
    @location = location.capitalize
    @url = "https://touringghana.com/top-10-tourist-attractions/".sub(" ", "--")

  end

  def parse_url(url)
    html_to_elements = open(url)
    parsed_html_elements = Nokogiri::HTML(html_to_elements)
  end


  def self.scrape_site_names
   url = "https://touringghana.com/top-10-tourist-attractions/".sub(" ", "--")
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   site_elements = parsed_html_elements.css
   site_names = site_elements.css('h3').text


  end

    def self.scrape_site_blurb(url)
      html_to_elements = open(url)
      parsed_html_elements = Nokogiri::HTML(html_to_elements)
      site_elements = arsed_html_elements.css
      site_blurb = site_elements.class('a')
    end

end
