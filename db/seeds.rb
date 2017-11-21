
# --------------------------------------------------PLACES---------------------------------------------------------------

# BEER

bar_list = [
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Temple Bar", address: "Nørrebrogade, KBH", type: "Bar", open_hours: 16, close_hours: 02 }
]

Destination.create!(bar_list)

bar = Destination.find_by_name("Temple Bar")
MenuItem.new(name: "Heineken Tap Beer", type: "beer", price: 40, destination: bar)

# WINE


# COCKTAILS

# --------------------------------------------------RESTAURANTS--------------------------------------------------------

restaurant_list = [
  { name: "Bæst", address: "Guldbergsgade 29, DK-2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Fætter Fætter", address: "Griffenfeldsgade 17, 2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Sidecar", address: "Skyttegade 5, 2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Grisen", address: "Fredensgade 5, DK-2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Mirabelle", address: "Guldbergsgade 29 2200 København N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Ramen to Biiru", address: "Griffenfeldsgade 28, 2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nepali Bhancha", address: "Tagensvej 102, 2200 København N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Banana Joe", address: "Elmegade 18, 2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Banh Mi", address: "2200 n, Elmegade 20, 2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Sund Sult", address: "Elmegade 8, DK-2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "YoBurger", address: "NØRREGADE 2 1165 København K", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Plenum", address: "Sankt Hans Torv 3, 2200 Copenhagen N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nordic Noodles", address: "Nørrebrogade 29, 2200 København N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nino's Pizza", address: "Guldbergsgade 18, 2200 København N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nicecream", address: "Elmegade 30, 2200 København N", type: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Rita's Smørrebrød", address: "Fælledvej 11, Norrebro", type: "Restaurant", open_hours: 17, close_hours: 22 },

]


Destination.create!(restaurant_list)

# ---------------------------------------1--------------------------------------

restaurant = Destination.find_by_name("Bæst")

appetizers = [
	{name: "Pickled Danish mussels", type: "appetizer", price: 40, destination: restaurant},
	{name: "Olives stuffed with almonds", type: "appetizer", price: 40, destination: restaurant},
	{name: "pickles, ciccioli, Mirabelle bread", type: "appetizer", price: 55, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Margherita Pizza", type: "main_course", price: 85, destination: restaurant}
	{name: "Grilled chicken wings", type: "main_course", price: 130, destination: restaurant}
	{name: "Grilled Polenta", type: "main_course", price: 95, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------2--------------------------------------

restaurant = Destination.find_by_name("Fætter Fætter")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------3--------------------------------------
restaurant = Destination.find_by_name("Sidecar")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------4--------------------------------------
restaurant = Destination.find_by_name("Mirabelle")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------5--------------------------------------
restaurant = Destination.find_by_name("Ramen to Biiru")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------6--------------------------------------
restaurant = Destination.find_by_name("Nepali Bhancha")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------7--------------------------------------
restaurant = Destination.find_by_name("Banana Joe")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------8--------------------------------------
restaurant = Destination.find_by_name("Banh Mi")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------9--------------------------------------
restaurant = Destination.find_by_name("Sund Sult")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------10-------------------------------------
restaurant = Destination.find_by_name("YoBurger")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------11-------------------------------------
restaurant = Destination.find_by_name("Plenum")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------12-------------------------------------
restaurant = Destination.find_by_name("Nordic Noodles")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------13-------------------------------------
restaurant = Destination.find_by_name("Nino's Pizza")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------14-------------------------------------
restaurant = Destination.find_by_name("Smag")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------15-------------------------------------
restaurant = Destination.find_by_name("Nicecream")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------16-------------------------------------
restaurant = Destination.find_by_name("Rita's Smørrebrød")

appetizers = [
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)













