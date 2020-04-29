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

song3 = Song.create(title: "Jorja", artist: "SCNE", spotify: nil, soundcloud: "https://soundcloud.com/onthescne/jorja")
song3.image.attach(io: File.open("./db/song_images/jorja.jpg"), filename: "jorja.jpg", content_type: "image/jpg")

song4 = Song.create(title: "Jorja", artist: "SCNE", spotify: nil, soundcloud: "https://soundcloud.com/onthescne/nuh-ready-nuh-ready-scne-remix")
song4.image.attach(io: File.open("./db/song_images/nuh_ready.jpg"), filename: "nuh_ready.jpg", content_type: "image/jpg")

song5 = Song.create(title: "I Don't Feel Love", artist: "SCNE", spotify: "https://open.spotify.com/album/3NGjQRlgY9t7JpgJMONfts", soundcloud: nil)
song5.image.attach(io: File.open("./db/song_images/i_dont_feel_love.jpg"), filename: "i_dont_feel_love.jpg", content_type: "image/jpg")

song6 = Song.create(title: "When The Sun Goes Down", artist: "SCNE", spotify: "https://open.spotify.com/album/2TXK2vx7lzhQok356tXNVR", soundcloud: nil)
song6.image.attach(io: File.open("./db/song_images/when_the_sun_goes_down.jpg"), filename: "when_the_sun_goes_down.jpg", content_type: "image/jpg")

