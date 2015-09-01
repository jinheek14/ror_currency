# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seeding country data from csv file 
require 'csv'
datafile = Rails.root + 'db/data.csv'
CSV.foreach(datafile, headers:true) do |row|
	CountryDatum.find_or_create_by({countryCode: row[0]}) do |hr|
		hr.countryCode = row[0]
		hr.countryDescription = row[1]
		hr.created_at = row[2]
		hr.updated_at = row[3]
	end
end


# require 'csv'

# datafile = Rails.root + 'db/countryDatabase.csv'

# CSV.foreach(datafile, headers: true) do |row|

#   Data.find_or_create_by({address: row[0]}) do |hr|
#     hr.address = row[0]
#     hr.city =  row[1]
#     hr.state =  row[2]
#     hr.zip =  row[3]
#     hr.name =  row[4]
#   end

# end