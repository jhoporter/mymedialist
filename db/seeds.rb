require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Medium.delete_all

# This needs to be read from the root directory
data = CSV.read(Rails.root.join('data/movies_metadata.csv'))
headers = data[0]
title_col = headers.index('title')
release_date_col = headers.index('release_date')
poster_col = headers.index('poster_path')

data.drop(1).each do |m|
  title = m[title_col]
  release_date = m[release_date_col]
  poster_path = m[poster_col]
  Medium.create({
    title: title,
    release_date: release_date,
    image: poster_path && 'https://image.tmdb.org/t/p/w500/' + poster_path
  })
end
