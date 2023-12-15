require "csv" # we are requiring the csv library

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# CSV.foreach(filepath, headers: :first_row) do |row|
#   # p row
#   p "#{row['First Name']} | #{row['Last Name']} | #{row['Instrument']}"
#   # First Name: John
#   # First Name: Paul
#   # First Name: George
# end

musicians = [
  ["Paul","McCartney","Bass Guitar"],
  ["George","Harrison","Lead Guitar"],
  ["John","Lennon","Guitar"],
  ["Ringo","Starr","Drums"]
]

CSV.open(filepath, 'wb') do |csv|
  csv << ['First Name', 'Last Name', 'Instrument']
  musicians.each do |musician|
    csv << musician
  end
end
