require_relative "./scraper.rb"
require_relative "./cli.rb"

class Site

  @@all = []

  attr_accessor :name, :location, :url

 def initialize (name, location, url)
   @name = name
   @location = location
   @url = url
   @@all << self
 end

 def self.all
   @@all
 end

 def self.print_all_sites
   Site.all.each do |site|
     puts site.name
   end
 end

 def self.find_by_index(index)
   @@all[index]
 end

end
