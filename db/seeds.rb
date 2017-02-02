Product.create!([
  {name: "Sonic Screwdriver", price: "8.99", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", supplier_id: 3},
  {name: "Lightsaber", price: "270.1", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", supplier_id: 2},
  {name: "Space Cowboy Laser Gun", price: "170.89", description: "This weapon has no other description than, Shiney!", supplier_id: 2},
  {name: "Hitchhiker's Guide to the Galexy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", supplier_id: 1},
  {name: "DnD Dice set", price: "57.5", description: "Take down mighty dragons with this timeless set of 20 sided wonders", supplier_id: 1},
  {name: "WNYX Mug", price: "1.5", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", supplier_id: 1},
  {name: "Flux Capacitor", price: "15.64", description: "Bump your head on the toilet and change the world", supplier_id: 2}
])
Image.create!([
  {url: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", product_id: 1},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 2},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 3},
  {url: "http://www.notcot.com/images/guide.gif", product_id: 4},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 5},
  {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", product_id: 6},
  {url: "https://i.ytimg.com/vi/p2iUzSjyue0/maxresdefault.jpg", product_id: 2},
  {url: "https://i1.wp.com/moneynation.com/wp-content/uploads/2016/01/real-lightsaber-cost.jpg", product_id: 2},
  {url: "http://www.radiotimes.com/uploads/images/original/98631.png", product_id: 2},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/02/c5/d3/02c5d34dc1d7afc899c7d8ed336cd66d.jpg", product_id: 2},
  {url: "http://vignette2.wikia.nocookie.net/tardis/images/3/35/Twelfth_doctor's_sonic_screwdriver.jpg/revision/latest?cb=20151206045849", product_id: 1},
  {url: "https://i.ytimg.com/vi/WujaXajZ2SM/maxresdefault.jpg", product_id: 1}
])
Supplier.create!([
  {name: "Billy Bob's House of Novilites", email: "bbob@gmail.com", phone: "(312) 555-9991"},
  {name: "Emporium of Brick-a-brack", email: "orders@brickabrack.com", phone: "(312) 555-1119"},
  {name: "Dave on clark and Franklin", email: "hammer.time@aol.com", phone: "(312) 555-5555"}
])
