# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  'Aleshia Sandavol',
  'Leana Pilarski',
  'Albertha Brittian',
  'Angla Hirt',
  'Lea Schwartzkopf',
  'Chuck Um',
  'Nannette Foor',
  'Danilo Bergren',
  'Isabel Larock',
  'Geraldo Henriques',
  'Arlinda Barrentine',
  'Marx Martins',
  'Elease Wexler',
  'Soraya Palencia',
  'Kassandra Lipscomb',
  'Clair Logsdon',
  'Jenny Kimber',
  'Dayle Fluker',
  'Esther Weyer',
  'Renda Brabant'
].each { |name| User.create(name: name, age: rand(20..50)) }
