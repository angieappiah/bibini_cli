require_relative "./scraper.rb"
require_relative "./cli.rb"

class Site

  @@all = []

  attr_accessor :name, :description, :url

def initialize(name, description, url)
  @name = name
  @description = description
  @url = url
  @@all << self
end

 def self.all
   @@all
 end


 def self.find_by_index(index)
   @@all[index]
 end

end
