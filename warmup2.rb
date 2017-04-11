def parse_script(string)
  att = {
   type: /<(\w)/.match(string),
   classes: /class='(\w{1, 20}).(\w{1, 20})'/.match(string),
   id: /id='(\w{1, 20})'/.match(string),
   name: /name='(\w{1, 30})'/.match(string)
 }
end

def outputter(structure)
  structure.each do |line|
    puts line
  end
end

html_string = "<div> div text before <p> p text </p> <div> more div text </div> div text after </div."

data_structure = parse_script(html_string)

outputter(data_structure)
