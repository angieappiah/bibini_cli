require_relative "./site.rb"
require 'pry'
class Scraper



  def self.scrape_sites(url)
   url = "https://touringghana.com/top-10-tourist-attractions/"
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   parsed_html_elements.css('.item-details').each do |elements, index|
   #this is an array of site elements, we need to iterate over it and make new Site instances
   site_name = elements.children[1].text
   url = elements.css('a').attr('href').text
   description = elements.children[5]
   #site = Site.new(site_name, description, url)
   #binding.pry
   #puts "#{index}, #{site_name}"
   #puts "#{url}".yellow
   #use the information that you scraped to make new instances of the sites
   #Site.new(name, description_url)
   #The description will be the second scrape

   end
  end

end
