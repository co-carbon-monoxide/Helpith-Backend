# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

family = Family.create(name: "田中家")

mother = family.users.create(name: "お母さん", email: "mother@example.com", password_digest: "password")
father = family.users.create(name: "お父さん", email: "father@example.com", password_digest: "password")
child1 = family.users.create(name: "太郎", email: "taro@example.com", password_digest: "password")
child2 = family.users.create(name: "花子", email: "hanako@example.com", password_digest: "password")
