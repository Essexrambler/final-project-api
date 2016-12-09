# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
}])

Animal.create!([{
  species: "Gorilla",
  location: "Rawanda",
  image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQEn6kDgE38xespkWBX6hTmW_L6xlUB08YazFd-S3C58ZLBmJd9",
  gender: "Male"
},{
  species: "Snow Leopard",
  location: "Bhutan",
  image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRd9T1QxtvKo4THn2vE1xcIsqr2zw--zXjWe6WnAOg4ZioxBLCIdw",
  gender: "Female"
},{
  species: "Polar Bear",
  location: "Greenland",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCnQ_NmPiJ2TBOWDh2pZVQgvU-MOfeV2SAO42JaoCCaPxxSNZ9",
  gender: "Male"
},{
  species: "Rhino",
  location: "Kenya",
  image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRvaI5_tNLiNDgaEujxYgStF0mX-TISPSIf5UepHGZg81JvZxBz",
  gender: "Female"
},{
  species: "Elephant",
  location: "Botswana",
  image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWtTgVwvt692mLqSuuNhh51CUgglBeRJAu4GQ8o_1GXfHMmWYS3Q",
  gender: "Female"
},{
  species: "Orang-Utan",
  location: "Borneo",
  image: "http://yourshot.nationalgeographic.com/u/ss/fQYSUbVfts-T7pS2VP2wnKyN8wxywmXtY0-FwsgxpCviovjTwzZ9AzzNVR5f8LWgB4bIGx-d-cZy3qGrGWwK/",
  gender: "Male"
},{
  species: "Panda",
  location: "China",
  image: "https://aos.iacpublishinglabs.com/question/aq/1400px-788px/pandas-live_64dff22c2fe56e9.jpg?domain=cx.aos.ask.com",
  gender: "Female"
},{
  species: "Tiger",
  location: "India",
  image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRrXqGxCAzw11ejHll8ZROgV-Jupd3gfEgXvAmbrHsbCF5jOJH9",
  gender: "Female"
},{
  species: "White Shark",
  location: "Atlantic Ocean",
  image: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
  gender: "Female"
  }])
