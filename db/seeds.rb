# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Medium.create([
  {
    title: 'John Wick 3',
    release_year: '2019',
    image: 'https://m.media-amazon.com/images/M/MV5BMDg2YzI0ODctYjliMy00NTU0LTkxODYtYTNkNjQwMzVmOTcxXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY1000_CR0,0,648,1000_AL_.jpg'
  },
  {
    title: 'Detective Pikachu',
    release_year: '2019',
    image: 'https://cdn.cinematerial.com/p/500x/xptogpmr/pokemon-detective-pikachu-czech-movie-poster.jpg'
  }
])
