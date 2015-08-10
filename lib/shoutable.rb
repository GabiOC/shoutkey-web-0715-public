require 'nokogiri'
require 'open-uri'

module Shoutable

  def shoutkey
    escaped = URI.escape(@url)
    html = open("http://shoutkey.com/new?url=#{escaped}")
    doc = Nokogiri::HTML(html)
    parsed_shoutkey = doc.css('.hero-unit h1 a').text
    parsed_shoutkey
  end

end