# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

user1 = User.create(username: 'Andy')
user2 = User.create(username: 'Ori')
user3 = User.create(username: 'Carl')
user4 = User.create(username: 'Bob')

crazy = 'https://s3.amazonaws.com/pix.iemoji.com/images/emoji/apple/ios-12/256/crazy-face.png'
snowboard = 'https://www.tactics.com/a/bdg5/r/snowboard-main.jpg'
skiing = 'https://upload.wikimedia.org/wikipedia/commons/8/84/Ski_Famille_-_Family_Ski_Holidays.jpg'
ryan  = 'https://pbs.twimg.com/profile_images/2542059367/photo.JPG'

Artwork.destroy_all

artwork1 = Artwork.create(title: 'Snowbard', image_url: snowboard, artist_id: user1.id)
artwork2 = Artwork.create(title: 'Skiing', image_url: skiing, artist_id: user2.id)
artwork3 = Artwork.create(title: 'crazy', image_url: crazy, artist_id: user3.id)
artwork4 = Artwork.create(title: 'ryan', image_url: ryan, artist_id: user4.id)


ArtworkShare.destroy_all

ArtworkShare.create(artwork_id:artwork1.id, viewer_id:user1.id)
ArtworkShare.create(artwork_id:artwork3.id, viewer_id:user2.id)
ArtworkShare.create(artwork_id:artwork4.id, viewer_id:user2.id)
ArtworkShare.create(artwork_id:artwork3.id, viewer_id:user2.id)
ArtworkShare.create(artwork_id:artwork2.id, viewer_id:user3.id)
ArtworkShare.create(artwork_id:artwork1.id, viewer_id:user4.id)
ArtworkShare.create(artwork_id:artwork3.id, viewer_id:user4.id)


