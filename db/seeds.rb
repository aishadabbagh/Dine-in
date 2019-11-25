# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Food.destroy_all

Restaurant.create(name: "Lusin", category: "Armanian",image: "https://yastudio.net/wp-content/uploads/2018/03/Lusin-Logo-En-Work-By-YaStudio.jpg", user_id: 1)
Restaurant.create(name: "Al Orjouan", category: "Mediterranean",image:"http://www.ksagate.co/al_reem/uploads/logos/%D8%A7%D9%84%D8%A7%D8%B1%D8%AC%D9%88%D8%A7%D9%86.jpg", user_id: 2)
Restaurant.create(name: "Zafran Indian Bistro", category: "Indian",image:"https://images.deliveryhero.io/image/talabat/restaurants/Logo_2_636493761166317762.jpg", user_id: 3)

Food.create(name: "Steak", price: 299, image: "https://instagram.fiev1-1.fna.fbcdn.net/v/t51.2885-15/e15/70126370_223099862009137_8074123753870764592_n.jpg?_nc_ht=instagram.fiev1-1.fna.fbcdn.net&_nc_cat=101&oh=d9700af8b27bf7085f3450a18fc68f3e&oe=5E02D742&ig_cache_key=MjEzMjEwODY2NzkxMzk0MTc0MQ%3D%3D.2", restaurant_id: Restaurant.ids[0])
Food.create(name: "Soup", price: 75, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0uMRKXa-_LmE2kHOrknhOerShAbpc-8OWkBiHB3YKTT1DzePJ&s", restaurant_id: Restaurant.ids[0])
Food.create(name: "Eclipse", price: 25, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMj7PCufSztpolU-h8kDaPomaBjY-BikM5IL3aufs_n__VLnonaw&s", restaurant_id: Restaurant.ids[0])
Food.create(name: "Steak", price: 162, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOpcX1lIlXCRciWj8hDURtZBXhDRAYT4yYv2dfXuBbC4myhd8&s", restaurant_id: Restaurant.ids[1])
Food.create(name: "Sandwich", price: 26, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCZ6-uqsWHdPZKhQrVA2GaU6EyJLr2p_ODNRGJyssYH7BKgRkH&s", restaurant_id: Restaurant.ids[1])
Food.create(name: "Shrimp beriyane", price: 88, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery-11%28850x500px%29_0.jpg", restaurant_id: Restaurant.ids[2])
Food.create(name: "Kebbab", price: 95, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery12-%28850x500px%29_0.jpg", restaurant_id: Restaurant.ids[2])
