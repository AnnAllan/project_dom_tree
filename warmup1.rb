paragraph = "<p class='foo bar' id='baz' name='fozzie'>"
# div = "<div id= 'bim'>"
# image = "<img src='http://www.example.com' title='funny things'>"

def parse_tag(string)
   att = {
    type: /<(\w)/.match(string),
    classes: /class='(\w{1, 20}).(\w{1, 20})'/.match(string),
    id: /id='(\w{1, 20})'/.match(string),
    name: /name='(\w{1, 30})'/.match(string)
  }
end

tag = parse_tag(paragraph)
puts tag.type
puts tag.classes
puts tag.id
puts tag.name

# tag = parse_tag(div)
# puts tag.type
# puts tag.class
# puts tag.id
# puts tag.name
#
# tag = parse_tag(image)
# puts tag.type
# puts tag.class
# puts tag.id
# puts tag.name
