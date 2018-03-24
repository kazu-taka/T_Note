# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
100.times do |index|
School.create(title:"迷いの中に生きています",name: "山本太郎",career: 20, post.position_name: "小学校教員")
end
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.create(position_name: "幼稚園教員,保育士")
Post.create(position_name: "小学校教員")
Post.create(position_name: "中学校教員")
Post.create(position_name: "高校教員")
Post.create(position_name: "大学教員")
