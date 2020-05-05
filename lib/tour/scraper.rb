require_relative "./site.rb"
#require 'pry'
class Scraper



  def self.scrape_site(url)
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   parsed_html_elements.css('h3').each do |elements|
   #this is an array of site elements, we need to iterate over it and make new Site instances
   site_name = elements.children.text
   location = elements.css('a').attr('href')
   url = elements.css('a').attr('href').value
   Site.new(site_name,location,url)
   #use the information that you scraped to make new instances of the sites
   #Site.new(name, description_url)
   #The description will be the second scrape
   end
  end

  def self.scrape_details_of_place(url)
   html_to_elements = open("https://touringghana.com/lake-bosomtwi/")
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   parsed_html_elements.css('h1').each do |elements|
   location = elements.children.text
   details_of_place = elements.css('.td-post-content').attr('href')
   url = elements.css('a').attr('href').value
   Site.new(site_name,location,url)

   end
  end

end
