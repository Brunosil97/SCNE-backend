# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = Admin.create(username: "Bruno", password: "123")
song1 = Song.create(title: "Better With You", artist: "SCNE", spotify: "https://open.spotify.com/album/6OrGnDvCD1Vd8eDtQIH03I?si=C5bBpyPb", soundcloud: nil)
song1.image.attach(io: File.open("./db/song_images/CD_Cover.jpg"), filename: "CD_Cover.jpg", content_type: "image/jpg")

song2 = Song.create(title: "Guava", artist: "SCNE", spotify: "https://open.spotify.com/album/2cGFGGY4nExgxBA6RQrrd6", soundcloud: nil)
song2.image.attach(io: File.open("./db/song_images/guava.jpg"), filename: "guava.jpg", content_type: "image/jpg")

