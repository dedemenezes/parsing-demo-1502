require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

html_file = URI.open("https://www.bbcgoodfood.com/search?q=chicken").read
# p html_file
html_doc = Nokogiri::HTML.parse(html_file)

# CSS SELECTOR!
# <div class='header'>
  # <p>hello world</p>
# </div>
# div {}
# .header {}
# #header {}
# .header p {}
html_doc.search('.layout-md-rail .card__section.card__content a').each do |element|
  p element.attribute('href').value
  p element.text
end
