require_relative "./site.rb"
require 'pry'
class TourSiteScraper



  def self.scrape_sites
   url = "https://touringghana.com/top-10-tourist-attractions/"
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   parsed_html_elements.css('.item-details').each_with_index do |elements, index|
   #this is an array of site elements, we need to iterate over it and make new Site instances
   name = elements.children[1].text
   url = elements.css('a').attr('href').text
   description = elements.children.text
   site_name = elements.css
   #site = Site.find_by(details)
   #binding.pry
   new_site = Site.new(name, description, url)

   #binding.pry
   #puts "#{index}, #{name}"
   #puts "#{url}".yellow
   #puts "#{description}"
   #use the information that you scraped to make new instances of the sites
   #Site.new(name, description_url)
   #The description will be the second scrape

   end
   #binding.pry
  end

end
