# frozen_string_literal: true

require 'csv'

def create_data(num_of_rows = nil)
  csv_text = File.read(Rails.root.join('db', 'zipcode_latlngs.csv'))
  csv_raw = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
  csv_data = num_of_rows ? csv_raw[0..num_of_rows] : csv_raw
  csv_data.each do |row|
    Zipcode.create(zipcode: row['Zip'].to_i, city: row['City'], state: row['State'], lat: row['Latitude'].to_f, long: row['Longitude'].to_f, timezone: row['Timezone'].to_i, daylight_savings: savings_convert(row), geopoint: row['geopoint'].to_f)
    puts "Created a record for #{Zipcode.first.city}, #{Zipcode.first.state}"
  end
end

def savings_convert(row)
  indicator = row.dig('Daylight savings time flag')
  indicator == '1'
end

case Rails.env
when 'development'
  create_data(9)
when 'production'
  create_data
end
