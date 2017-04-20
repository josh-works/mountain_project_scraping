require 'open-uri'
# helperfy this ^^

class WebScraper
  attr_reader :base_url

  def initialize
    @base_url = "https://www.mountainproject.com"
  end

  def scrape_area(area)
    doc = Nokogiri::HTML(open("#{@base_url}/v/#{area}"))
    area = doc.xpath('//h1')[0].children.children[0].text.to_s
    getting_there = doc.xpath('//h3')[2].next.text.to_s

    {area: area,
     getting_there: getting_there }
     
  end

end
