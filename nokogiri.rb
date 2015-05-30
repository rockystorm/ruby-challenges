require "rubygems"
require "nokogiri"
require "open-uri"


doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

list = doc.css('.components-list li')

list.each() do |n|
    puts n.inner_html
end
