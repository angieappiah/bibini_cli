class popular_sites
  attr_accessor :name :availability :url

  def self.sites
    <<-DOC.gsub/^\s*/,''
    DOC
    site_1 = self.new
    site_1.name = "cape coast castle"
    site_1.availability = true
    site_1 url = "https://www.easytrackghana.com/tour-ghana_day-trips-accra.ph"

    site_2 = self.new
    site_2.name = "shai hill"
    site_2.availability = true
    site_2 url = "https://www.easytrackghana.com/tour-ghana_day-trips-accra.ph"

    site_3 = self.new
    site_3.name = "Boti falls"
    site_3.availability = true
    site_3 url = "https://www.easytrackghana.com/tour-ghana_day-trips-accra.ph"

    [site_1, site_2, site_3]
  end
end
