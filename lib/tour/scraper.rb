require_relative "./site.rb"
class Scraper


  def self.scrape_site_names(url)
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   site_elements = parsed_html_elements.css
   site_names = site_elements.css('h3').text
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
