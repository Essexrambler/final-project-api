# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["users", "animals"].each do |table_name|
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
  gender: "Male",
  habitat: "The powerful mountain gorilla, now critically endangered with only around 880 left in the wild."
},{
  species: "Snow Leopard",
  location: "Bhutan",
  image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRd9T1QxtvKo4THn2vE1xcIsqr2zw--zXjWe6WnAOg4ZioxBLCIdw",
  gender: "Female",
  habitat: "Powerful, captivating and incredibly vulnerable to poaching and loss of prey."
},{
  species: "Polar Bear",
  location: "Greenland",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCnQ_NmPiJ2TBOWDh2pZVQgvU-MOfeV2SAO42JaoCCaPxxSNZ9",
  gender: "Male",
  habitat: "Magnificent polar bears depend on Arctic sea ice to hunt and raise their young. But the ice is shrinking."
},{
  species: "Rhino",
  location: "Kenya",
  image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRvaI5_tNLiNDgaEujxYgStF0mX-TISPSIf5UepHGZg81JvZxBz",
  gender: "Female",
  habitat: "Relentless poaching for their horns and loss of their natural habitats, has led to a catastrophic fall in rhino numbers."
},{
  species: "Elephant",
  location: "Asia",
  image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWtTgVwvt692mLqSuuNhh51CUgglBeRJAu4GQ8o_1GXfHMmWYS3Q",
  gender: "Female",
  habitat: "The magnificent Asian elephant is threatened by extinction in the wild, its habitat is shrinking fast."

},{
  species: "Orang-Utan",
  location: "Borneo",
  image: "http://yourshot.nationalgeographic.com/u/ss/fQYSUbVfts-T7pS2VP2wnKyN8wxywmXtY0-FwsgxpCviovjTwzZ9AzzNVR5f8LWgB4bIGx-d-cZy3qGrGWwK/",
  gender: "Male",
  habitat: "Orang-utans have declined by around 50% in the last 60 years."
},{
  species: "Panda",
  location: "China",
  image: "https://aos.iacpublishinglabs.com/question/aq/1400px-788px/pandas-live_64dff22c2fe56e9.jpg?domain=cx.aos.ask.com",
  gender: "Female",
  habitat: "It is estimated that around 1,860 giant pandas remain in the wild today. Help us protect this iconic species"
},{
  species: "Tiger",
  location: "India",
  image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRrXqGxCAzw11ejHll8ZROgV-Jupd3gfEgXvAmbrHsbCF5jOJH9",
  gender: "Female",
  habitat: "Tigers are in trouble and need your help. Become a Tiger Protector today and join with us to double the number of this majestic species in the wild by 2022"
},{
  species: "White Shark",
  location: "Atlantic Ocean",
  image: "https://upload.wikimedia.org/wikipedia/commons/5/56/White_shark.jpg",
  gender: "Female",
  habitat: "The White shark is now protected in some Oceans, but not all. This Apex
  predator has a key role in the Oceans fragile ecosystem."

  }])
