require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich'))
#search = doc.css('li.ingredient')
#puts search
list = doc.css('span.ingredient-label')
#puts list

list.each do |ingredient|
    puts ingredient.inner_html
end 