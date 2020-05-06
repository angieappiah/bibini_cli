require_relative "./site.rb"
#require 'pry'
class Scraper



  def self.scrape_site(url)
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   parsed_html_elements.css('h3').each.with_index(1) do |elements, index|
   #this is an array of site elements, we need to iterate over it and make new Site instances
   site_name = elements.children.text
   url = elements.css('a').attr('href').text
   description = elements.css('a').attr('.td-post-sharing-top')
   description = Site.new(site_name,description,url)
   new_description = Site.new(site_name,description,url)

   puts "#{index}, #{site_name}"
   puts "#{url}".yellow
   puts "#{description}"
   puts ""

   #use the information that you scraped to make new instances of the sites
   #Site.new(name, description_url)
   #The description will be the second scrape
   end
  end

  #def self.scrape_description(url)
   #html_to_elements = open("https://touringghana.com/lake-bosomtwi/")
   #parsed_html_elements = Nokogiri::HTML(html_to_elements)
   #parsed_html_elements.css('h1').each do |elements|
   #description = elements.css('a').attr('href').value
   #details_of_place = elements.css('.td-post-content').attr('href')
  #url = elements.css('a').attr('href').text
   #Site.new(site_name,location,url)
   #puts "#{description}"
   #end
  #end

end
