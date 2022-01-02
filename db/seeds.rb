# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "a@a",
  password: "aaaaaa"
)
Genre.create!(
  [
    {
      name: "ケーキ",
      is_active: true,
    },
    {
      name: "焼き菓子",
      is_active: true,
    },
    {
      name: "プリン",
      is_active: false,
    },
    {
      name: "和菓子",
      is_active: false,
    },
    {
      name: "アイス",
      is_active: true,
    }
  ]
  )
for i in 1..10 do
  Item.create!(
    [
      {
        genre_id: 1,
        name: "ケーキ#{i}",
        introduction: "#{3*i-2}番目の商品です。",
        price: rand(1..10) * 100,
        image: File.open("./app/assets/images/cake#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 2,
        name: "クッキー#{i}",
        introduction: "#{3*i-1}番目の商品です。",
        price: rand(1..10) * 200,
        image: File.open("./app/assets/images/cookies#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 3,
        name: "プリン#{i}",
        introduction: "#{3*i}番目の商品です。",
        price: rand(1..10) * 300,
        image: File.open("./app/assets/images/pudding#{i%5+1}.jpg"),
        is_active: false
      }
    ]
    )
end