# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Food.destroy_all

Restaurant.create(name: "Lusin", category: "Armanian", user_id: 1)
Restaurant.create(name: "Al Orjouan", category: "Mediterranean", user_id: 2)
Restaurant.create(name: "Zafran Indian Bistro", category: "Indian", user_id: 3)

Food.create(name: "Lusin", price: 0, image: "https://media-cdn.tripadvisor.com/media/photo-s/04/c5/88/5f/lusin.jpg", restaurant_id: 1)
Food.create(name: "Lusin", price: 0, image: "https://cdn.theculturetrip.com/images/56-249025-lusin.jpg", restaurant_id: 1)
Food.create(name: "Steak", price: 299, image: "https://instagram.fiev1-1.fna.fbcdn.net/v/t51.2885-15/e15/70126370_223099862009137_8074123753870764592_n.jpg?_nc_ht=instagram.fiev1-1.fna.fbcdn.net&_nc_cat=101&oh=d9700af8b27bf7085f3450a18fc68f3e&oe=5E02D742&ig_cache_key=MjEzMjEwODY2NzkxMzk0MTc0MQ%3D%3D.2", restaurant_id: 1)
Food.create(name: "Soup", price: 75, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0uMRKXa-_LmE2kHOrknhOerShAbpc-8OWkBiHB3YKTT1DzePJ&s", restaurant_id: 1)
Food.create(name: "Eclipse", price: 25, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMj7PCufSztpolU-h8kDaPomaBjY-BikM5IL3aufs_n__VLnonaw&s", restaurant_id: 1)
Food.create(name: "Al Orjouan", price: 0, image: "https://s7d2.scene7.com/is/image/ritzcarlton/50556723-RUHRZ_2018_0750?$XlargeViewport100pct$", restaurant_id: 2)
Food.create(name: "Al Orjouan", price: 0, image: "https://s7d2.scene7.com/is/image/ritzcarlton/50556724-RUHRZ_2018_0771?$XlargeViewport100pct$", restaurant_id: 2)
Food.create(name: "Steak", price: 162, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOpcX1lIlXCRciWj8hDURtZBXhDRAYT4yYv2dfXuBbC4myhd8&s", restaurant_id: 2)
Food.create(name: "Sandwich", price: 26, image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D415949665433357&imgrefurl=https%3A%2F%2Fen-gb.facebook.com%2Fpages%2Fcategory%2FFamily-Style-Restaurant%2Falorjouanqa%2Fposts%2F&docid=lqAv0nzqNX_x5M&tbnid=XJbZsSeejDsvgM%3A&vet=10ahUKEwj8872I2oLmAhXJXhUIHWASDOAQMwiSAShEMEQ..i&w=960&h=960&itg=1&safe=active&bih=921&biw=1920&q=Al%20Orjouan%20menu&ved=0ahUKEwj8872I2oLmAhXJXhUIHWASDOAQMwiSAShEMEQ&iact=mrc&uact=8", restaurant_id: 2)
Food.create(name: "Zafran Indian Bistro", price: 0, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery4-%28850x500px%29_0.jpg", restaurant_id: 3)
Food.create(name: "Zafran Indian Bistro", price: 0, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery-%289850x500px%29_0.jpg", restaurant_id: 3)
Food.create(name: "Shrimp beriyane", price: 88, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery-11%28850x500px%29_0.jpg", restaurant_id: 3)
Food.create(name: "Kebbab", price: 95, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery12-%28850x500px%29_0.jpg", restaurant_id: 3)
