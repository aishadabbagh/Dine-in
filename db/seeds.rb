# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Food.destroy_all
#Initial Restaurants :Exclaimer Added restaurant ID to add dishes according to restaurant ID

User.create(email: "lamees@dinein.com",password: "123456", Name: "lamees", Phone_Number: "1234567890", Role: "admin")
User.create(email: "mohammed@dinein.com",password: "123456", Name: "mohammed", Phone_Number: "1234567890",Role: "manger")
User.create(email: "Aisha@dinein.com",password: "123456", Name: "aisha", Phone_Number: "1234567890",Role: "manger")
User.create(email: "saud@dinein.com",password: "123456", Name: "saud", Phone_Number: "1234567890",Role: "manger")
User.create(email: "osama@dinein.com",password: "123456", Name: "osama", Phone_Number: "1234567890",Role: "manger")
User.create(email: "noura@dinein.com",password: "123456", Name: "noura", Phone_Number: "1234567890",Role: "manger")
User.create(email: "lojain@dinein.com",password: "123456", Name: "lojain", Phone_Number: "1234567890",Role: "manger")
User.create(email: "mohannad@dinein.com",password: "123456", Name: "mohannad", Phone_Number: "1234567890",Role: "manger")
User.create(email: "hazim@dinein.com",password: "123456", Name: "hazim", Phone_Number: "1234567890")
User.create(email: "mansour@dinein.com",password: "123456", Name: "mansour", Phone_Number: "1234567890")
User.create(email: "usman@dinein.com",password: "123456", Name: "usman", Phone_Number: "1234567890")

Restaurant.create(name: "Starbucks", category: "cafe",image: "https://cdnw.elicdn.com/Blog/wp-content/uploads/2015/10/280_starbucks-400x400.jpg", user_id: 2)
Restaurant.create(name: "Lusin", category: "Armanian",image: "https://yastudio.net/wp-content/uploads/2018/03/Lusin-Logo-En-Work-By-YaStudio.jpg", user_id: 3)
Restaurant.create(name: "Al Orjouan", category: "Mediterranean",image:"http://www.ksagate.co/al_reem/uploads/logos/%D8%A7%D9%84%D8%A7%D8%B1%D8%AC%D9%88%D8%A7%D9%86.jpg", user_id: 4)
Restaurant.create(name: "Zafran Indian Bistro", category: "Indian",image:"https://images.deliveryhero.io/image/talabat/restaurants/Logo_2_636493761166317762.jpg", user_id: 5)
Restaurant.create(name: "Shawarmer", category: "Fast food",image:"https://upload.wikimedia.org/wikipedia/commons/6/64/Shawarmer_logo.jpg", user_id: 6)
Restaurant.create(name: "Sushi Yoshi", category: "japanese",image:"https://images.deliveryhero.io/image/talabat/restaurants/SY_Logo_-_Arabic_636673484569947894.jpg", user_id: 7)
Restaurant.create(name: "Chili's", category: "American",image:"https://jobapplications.net/wp-content/uploads/chilis-logo.png", user_id: 8)


Food.create(name: "Ice white mocha", price: 23, image: "https://timedotcom.files.wordpress.com/2017/12/starbucks-black-and-white-drinks.jpg?quality=85&w=305&h=305&crop=1", restaurant_id: Restaurant.ids[0])
Food.create(name: "Iced coffee black", price: 17, image: "https://globalassets.starbucks.com/assets/659bf40a2e1e4478b43372be0058ef18.jpg", restaurant_id: Restaurant.ids[0])
Food.create(name: "Steak", price: 299, image: "https://instagram.fiev1-1.fna.fbcdn.net/v/t51.2885-15/e15/70126370_223099862009137_8074123753870764592_n.jpg?_nc_ht=instagram.fiev1-1.fna.fbcdn.net&_nc_cat=101&oh=d9700af8b27bf7085f3450a18fc68f3e&oe=5E02D742&ig_cache_key=MjEzMjEwODY2NzkxMzk0MTc0MQ%3D%3D.2", restaurant_id: Restaurant.ids[1])
Food.create(name: "Soup", price: 75, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0uMRKXa-_LmE2kHOrknhOerShAbpc-8OWkBiHB3YKTT1DzePJ&s", restaurant_id: Restaurant.ids[1])
Food.create(name: "Eclipse", price: 25, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMj7PCufSztpolU-h8kDaPomaBjY-BikM5IL3aufs_n__VLnonaw&s", restaurant_id: Restaurant.ids[1])
Food.create(name: "Steak", price: 162, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqOpcX1lIlXCRciWj8hDURtZBXhDRAYT4yYv2dfXuBbC4myhd8&s", restaurant_id: Restaurant.ids[2])
Food.create(name: "Sandwich", price: 26, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCZ6-uqsWHdPZKhQrVA2GaU6EyJLr2p_ODNRGJyssYH7BKgRkH&s", restaurant_id: Restaurant.ids[2])
Food.create(name: "Shrimp beriyane", price: 88, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery-11%28850x500px%29_0.jpg", restaurant_id: Restaurant.ids[3])
Food.create(name: "Kebbab", price: 95, image: "https://www.zafranrestaurants.com/sites/default/files/website-gallery12-%28850x500px%29_0.jpg", restaurant_id: Restaurant.ids[3])
Food.create(name: "Arabo", price: 35, image: "https://dueless.com/demo/content/uploads/images/product_5c8263341ef2a.jpg", restaurant_id: Restaurant.ids[4])
Food.create(name: "Nahyfat", price: 36, image: "https://pbs.twimg.com/media/Cdcw-_DWEAAWH1D.jpg", restaurant_id: Restaurant.ids[4])
Food.create(name: "Duo", price: 15, image: "https://scontent-lhr3-1.cdninstagram.com/v/t51.2885-15/e35/39508172_2214741171888378_3660825291825086464_n.jpg?_nc_ht=scontent-lhr3-1.cdninstagram.com&_nc_cat=106&se=8&oh=487cf50960d6322b22006abb9f998919&oe=5E1CB881&ig_cache_key=MTg1NTQ3ODQ1Nzg3NjQzODcxNQ%3D%3D.2", restaurant_id: Restaurant.ids[4])
Food.create(name: "Sushi Yoshi Special", price: 45, image: "http://iksal.nadsoft.co/pics/pics/news//2014/09/29/201409291730081412001008.png", restaurant_id: Restaurant.ids[5])
Food.create(name: "Smokehouse", price: 213, image: "https://static.olocdn.net/menu/chilis/bc5d821888359ce9da84e695d622849d.jpg", restaurant_id: Restaurant.ids[6])
Food.create(name: "Appetizers", price: 167, image: "https://chilispr.com/wp-content/uploads/2017/05/Loaded-Wings-thumb.jpg", restaurant_id: Restaurant.ids[6])
