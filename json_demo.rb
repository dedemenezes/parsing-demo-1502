require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)
# p serialized_beatles
beatles = JSON.parse(serialized_beatles)
# p beatles


# STORING
beatles = {
  "title": "The Beatles",
  "beatles": [
    {
      "first_name": "John",
      "last_name": "Lennon",
      "instrument": "Guitar",
      "age": 23
    }
  ]
}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end
