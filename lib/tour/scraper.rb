require_relative "./site.rb"
require 'pry'
class Scraper



  def self.scrape_site_names(url)
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   site_elements = parsed_html_elements.css('h3')
   #this is an array of site elements, we need to iterate over it and make new Site instances
   parsed_html_elements.css('h3')[0].children.text
   parsed_html_elements.css('h3')[0].css('a').attr('href')
   parsed_html_elements.css('h3')[0].css('a').attr('href').value
   binding.pry
   #use the information that you scraped to make new instances of the sites
   #Site.new(name, description_url)
   #The description will be the second scrape
  end

    def self.scrape_site_blurb(url)
      html_to_elements = open(url)
      parsed_html_elements = Nokogiri::HTML(html_to_elements)
      site_elements = arsed_html_elements.css
      site_blurb = site_elements.class('a')
    end

end
