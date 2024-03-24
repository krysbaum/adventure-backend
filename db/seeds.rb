# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Adventure.create!(name: "Vertical Diner", description: "Tracy and I decided to try the very long-standing, very popular vegan restaurant, Vertical Diner. They do breakfast all day, which is fine by us. Tracy got a breakfast burrito and I got the biscuits and gravy, which came with a side of country potatoes, tofu scramble, and \"sauzage\" (you gotta pronounce it \"sawz-zahj\"). It was really good and we had a great time! Too bad we didn't try the carrot cake though. Next time!", rating: 5, location: "8124 SW Barbur Blvd, Portland, OR 97219", category: 2, date: "2024-02-18")

Adventure.create!(name: "Doe Donuts", description: "We started off our day at the Bird Alliance of Oregon. As we walked, we placed hand-painted mushrooms Tracy made amongst the wilderness. Tracy got some really good photos. From there, we finally tried out Doe Donuts together. I had tried it before but was keen on trying it again, since my first round wasn't all that amazing. We got four donuts: Irish whisky, Pistachio, Portland Fog, and Bananas foster. We took them to Heretic Coffee, where we paired them with an iced latte with bourbon whiskey (?) syrup and a matcha latte. (I'll let you guess who got what!) The banana and the pistachio ones were so good, and we headed to shop in the Sellwood area after that.", rating: 5, location: "5120 SE 28th Ave, Portland, OR 97202", category: 2, date: "2024-03-16")

Image.create!(image_url: "https://images.happycow.net/venues/1024/10/63/hcmp10637_1868908.jpeg", adventure_id: 1)
Image.create!(image_url: "https://images.happycow.net/venues/1024/36/12/hcmp361219_2252933.jpeg", adventure_id: 2)

#Nature = 1, Food = 2, Shops = 3, Other = 4
