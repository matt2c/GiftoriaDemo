Supplier.destroy_all

pocoposy = Supplier.create({
  name: "Pocoposy",
  industry: "Florist",
  email: "pocoposy@hotmail.com",
  password: "1234",
  password_confirmation: "1234",
  phone: "0467305050",
  website: "http://www.pocoposy.com.au",
  location: "Sydney",
  image: "https://www.pocoposy.com.au/prod/img/contact-index.png"

})
interflora = Supplier.create({
  name: "Interflora",
  industry: "Florist",
  email: "matt.toussi@gmail.com",
  password: "12345",
  password_confirmation: "12345",
  phone: "0450043000",
  website: "http://www.interflora.com",
  location: "Lane Cove",
  image: "http://candybflowers.co.za/wp-content/uploads/2014/04/interflora.jpg"
})

puts "Supplier Count: #{ Supplier.all.count }"

Product.destroy_all

p1 = Product.create({
  name: "Scolptural",
  description: 'Unusual textures and scale create a dramatic impact, using a mix of different sculptural flowers and other interesting elements.',
  category: "Flowers",
  occasion: "Birthday",
  price: "$29.90",
  image: 'https://static1.squarespace.com/static/51de36bde4b0535b35b59d18/569d9bc017e4f1d7b5b66438/56b4688737013b0f50de2e38/1454663816509/sculptural2.jpg',
  supplier_id: pocoposy.id
})

p2 = Product.create({
  name: "Bright and Bold",
  description: "An eclectic mix of colourful blooms.",
  category: "Flowers",
  occasion: "Thinking of You",
  price: "$19.50",
  image: "https://static1.squarespace.com/static/51de36bde4b0535b35b59d18/569d9bc017e4f1d7b5b66438/569d9bc017e4f1d7b5b66459/1453169631316/130606_POHO_WEBSITE_239.jpeg",
  supplier_id: pocoposy.id
})

p3 = Product.create({
  name: "Romeo and Juliet",
  description: "Sweet, pretty rose bouquet in the palest of palest, softest of softest pink, for someone equally as sweet and pretty.",
  category: "Flowers",
  occasion: "Valentines",
  price: "$30.00",
  image: "http://www.flowersforeveryone.com.au/images/products/large/romeo-and-juliet.jpg",
  supplier_id: interflora.id
})

p4 = Product.create({
  name: "bill t-shirt",
  description: "bill Murray t-shirt",
  category: "Flowers",
  occasion: "Thanks Teachers",
  price: "$30.00",
  image: "https://cdn.shopify.com/s/files/1/0065/0022/products/BFM-BLACK-MAN-FLAT.jpg?v=1455309869",
  supplier_id: pocoposy.id
})

p5 = Product.create({
  name: "HD t-shirt",
  description: "Hotdog skateboard t-shirt",
  category: "Gifts and Crafts",
  occasion: "Thanks Teachers",
  price: "$30.00",
  image: "https://res.cloudinary.com/teepublic/image/private/s--AiJTkpvC--/t_Resized%20Artwork/c_fit,w_470/c_crop,g_north_west,h_626,w_470,x_0,y_0/g_north_west,u_upload:v1462829017:production:blanks:qe3008lhp5hquxmwp4a0,x_-395,y_-325/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1460498447/production/designs/476209_1.jpg",
  supplier_id: interflora.id
})

p6 = Product.create({
  name: "GM Mask",
  description: "Groucho Marx Mask",
  category: "Gifts and Crafts",
  occasion: "Thanks Teachers",
  price: "$20.00",
  image: "https://images-na.ssl-images-amazon.com/images/I/51joe7Jx9fL._UX425_.jpg",
  supplier_id: interflora.id
})

p7 = Product.create({
  name: "Cat t-shirt",
  description: "Black cat t-shirt",
  category: "Gifts and Crafts",
  occasion: "Thanks Teachers",
  price: "$50.00",
  image: "http://media-cache-ec0.pinimg.com/736x/54/98/99/54989955cd0c0d381f9174258f66f0fe.jpg",
  supplier_id: interflora.id
})

p8 = Product.create({
  name: "Cat sweater",
  description: "Cat loves dog sweater",
  category: "Gifts and Crafts",
  occasion: "Thanks Teachers",
  price: "$50.00",
  image: "http://cdn.shopify.com/s/files/1/0199/9492/products/0-catdog-png_grande.jpeg",
  supplier_id: interflora.id
})

p8 = Product.create({
  name: "Sweet love",
  description: "An eclectic mix of colourful blooms.",
  category: "Flowers",
  occasion: "Valentines",
  price: "$50.00",
  image: "http://faithfulprovisions.com/wp-content/uploads/2013/01/7455774c80a036e2f42923544256901338dff19c-ms_full.jpg",
  supplier_id: interflora.id
})

p9 = Product.create({
  name: "Forever ",
  description: "An eclectic mix of colourful blooms.",
  category: "Flowers",
  occasion: "Valentines",
  price: "$40.00",
  image: "https://static1.squarespace.com/static/51de36bde4b0535b35b59d18/569d9bc017e4f1d7b5b66438/56c29c3759827e4585efc9cd/1487076270799/?format=300w",
  supplier_id: interflora.id
})





puts "Product Count: #{Product.all.count}"
