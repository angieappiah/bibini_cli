class SiteScraper

  def self.scrape_site
   url = "https://touringghana.com/top-10-tourist-attractions/"
   html_to_elements = open(url)
   parsed_html_elements = Nokogiri::HTML(html_to_elements)
   site_elements = parsed_html_elements.css
   #site_elements.css('h3').class('a').each do |element|
     #site_name = element.css('.site_list').text
     doc = Nokogiri::HTML(open("https://touringghana.com/top-10-tourist-attractions/"))
     #doc.css('h3').class('a').each do |element|
     #end
  end

    def self.scape_site_blurb(url)
      html_to_elements = open(url)
      parsed_html_elements = Nokogiri::HTML(html_to_elements)
    end

end
