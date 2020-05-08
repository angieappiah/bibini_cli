require_relative "./scraper.rb"
require_relative "./cli.rb"

class Site

  @@all = []

  attr_accessor :site_name, :description, :url,

 def initialize (site_name, description, url)
   @site_name = site_name
   @description = description
   @url = url
   @@all << self
 end

 def self.all
   @@all
 end

 def self.print_all_sites
   Site.all.each_with_index do |site,index|
     puts site.site_name
     puts site.description
     puts site.url
   end
 end


 def self.find_by_index(index)
   @@all[index]
 end

end
