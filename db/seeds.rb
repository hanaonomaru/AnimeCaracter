# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Gender.create!(
    id: 1,
    value: "男性",
)
Gender.create!(
    id: 2,
    value: "女性",
)

AnimeCharacter.create!(
    name: "工藤新一",
    age: 17,
    gender_id: 1,
    voice_acter: "山口勝平",
)
