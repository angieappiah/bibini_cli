require_relative "./scraper.rb"
require_relative "./cli.rb"

class Site

  @@all = []

  attr_accessor :site_name, :description, :url

 def initialize (site_name, description, url)
   @site_name = site_name
   @description = description
   @url = url
   @@all << self
 end

 def self.all
   @@all
 end

 def self.print_all_site
   Site.all.each do |site|
     puts site.name
   end
 end

 def self.print_all_blurb
   Site.all.each do |blurb|
     puts site.name
   end
 end

 def self.find_by_index(index)
   @@all[index]
 end

end
