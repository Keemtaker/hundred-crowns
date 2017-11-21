

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
	{ name: "Margherita Pizza", type: "main_course", price: 85, destination: restaurant },
	{ name: "Grilled chicken wings", type: "main_course", price: 130, destination: restaurant },
	{ name: "Grilled Polenta", type: "main_course", price: 95, destination: restaurant }
]


# ---------------------------------------2--------------------------------------

restaurant = Destination.find_by_name("Fætter Fætter")

appetizers = [
	{name: "Croque Cousin", type: "appetizer", price: 45, destination: restaurant},
	{name: "Mushroom Toast", type: "appetizer", price: 45, destination: restaurant},
	{name: "Avocado Goat Toast", type: "appetizer", price: 35, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Veggie Toast", type: "main_course", price: 95, destination: restaurant},
	{name: "Toast Experience", type: "main_course", price: 95, destination: restaurant},
	{name: "When in Rome", type: "main_course", price: 255, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Cinnamon toast", type: "dessert", price: 35, destination: restaurant},
	{name: "Crisps", type: "dessert", price: 20, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------3--------------------------------------
restaurant = Destination.find_by_name("Sidecar")

appetizers = [
	{name: "Breakfast Plate", type: "appetizer", price: 89, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Sidecar Brunch", type: "main_course", price: 149, destination: restaurant},
	{name: "Veggie Brunch", type: "main_course", price: 169, destination: restaurant},
	{name: "Skyttegade Brunch", type: "main_course", price: 169, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------4--------------------------------------
restaurant = Destination.find_by_name("Mirabelle")

appetizers = [
	{name: "Antipasti Plate", type: "appetizer", price: 135, destination: restaurant},
	{name: "Salad", type: "appetizer", price: 95, destination: restaurant},
	{name: "Burrata", type: "appetizer", price: 125, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Pasta", type: "main_course", price: 120, destination: restaurant},
	{name: "Braised Lamb Pasta", type: "main_course", price: 120, destination: restaurant},
]

MenuItem.create!(main_course)

desserts = [
	{name: "Tiramisu", type: "dessert", price: 60, destination: restaurant},
	{name: "Lemon Granita", type: "dessert", price: 40, destination: restaurant},
	{name: "Gelato", type: "dessert", price: 50, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------5--------------------------------------
restaurant = Destination.find_by_name("Ramen to Biiru")

appetizers = [
	{name: "Edamame Beans", type: "appetizer", price: 40, destination: restaurant},
	{name: "Kimchi", type: "appetizer", price: 40, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Shio Ramen", type: "main_course", price: 100, destination: restaurant},
	{name: "Spicy Miso Ramen", type: "main_course", price: 115, destination: restaurant},
	{name: "No-Meat Ramen", type: "main_course", price: 100, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------6--------------------------------------
restaurant = Destination.find_by_name("Nepali Bhancha")

appetizers = [
	{name: "Veg Pakoda", type: "appetizer", price: 59, destination: restaurant},
	{name: "Fish Chilli", type: "appetizer", price: 69, destination: restaurant},
	{name: "Chicken Sekuwa", type: "appetizer", price: 59, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Vegetarian Curry", type: "main_course", price: 119, destination: restaurant},
	{name: "Saag Paneer", type: "main_course", price: 119, destination: restaurant},
	{name: "Lamb Masala", type: "main_course", price: 139, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Kheer", type: "dessert", price: 39, destination: restaurant},
	{name: "Dahi Lalmohani", type: "dessert", price: 49, destination: restaurant},
	{name: "MangoBrullé", type: "dessert", price: 59, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------7--------------------------------------
restaurant = Destination.find_by_name("Banana Joe")

appetizers = [
	{name: "Pommes Frites", type: "appetizer", price: 25, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Burger", type: "main_course", price: 35, destination: restaurant},
	{name: "Vegetarburger", type: "main_course", price: 40, destination: restaurant},
	{name: "Befsandwich", type: "main_course", price: 30, destination: restaurant}
]

MenuItem.create!(main_course)


# ---------------------------------------8--------------------------------------
restaurant = Destination.find_by_name("Banh Mi")

appetizers = [
	{name: "Summer Rolls", type: "appetizer", price: 42, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Bun Thang Soup", type: "main_course", price: 88, destination: restaurant},
	{name: "Bún - Noodle Salad", type: "main_course", price: 84, destination: restaurant},
	{name: "Dâu Phu Cà Ri Sandwich", type: "main_course", price: 52, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Icecream with condensed milk", type: "dessert", price: 30, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------9--------------------------------------
restaurant = Destination.find_by_name("Sund Sult")

appetizers = [
	{name: "Salad", type: "appetizer", price: 42, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant},
	{name: "", type: "appetizer", price: 40, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Hummus Sandwich", type: "main_course", price: 52, destination: restaurant},
	{name: "Pastrami Mozzarella Toast", type: "main_course", price: 49, destination: restaurant},
	{name: "Grøntsagssuppe", type: "main_course", price: 42, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Strawberry Smoothie", type: "dessert", price: 42, destination: restaurant},
	{name: "Mango Banana Smoothie", type: "dessert", price: 42, destination: restaurant},
	{name: "Blueberry Banana Smoothie", type: "dessert", price: 42, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------10-------------------------------------
restaurant = Destination.find_by_name("YoBurger")

appetizers = [
	{name: "Crinkle Cut Fries", type: "appetizer", price: 25, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Bacon YoBurger", type: "main_course", price: 104, destination: restaurant},
	{name: "Avocado YoBurger", type: "main_course", price: 104, destination: restaurant},
	{name: "Portobello Burger", type: "main_course", price: 104, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------11-------------------------------------
restaurant = Destination.find_by_name("Plenum")

appetizers = [
	{name: "Croissant", type: "appetizer", price: 18, destination: restaurant},
	{name: "Truffle Chips", type: "appetizer", price: 30, destination: restaurant},
	{name: "Peanuts and smoked almonds", type: "appetizer", price: 30, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Mozzarella Sandwich", type: "main_course", price: 60, destination: restaurant},
	{name: "Risotto", type: "main_course", price: 105, destination: restaurant},
	{name: "Fried Chicken Salad", type: "main_course", price: 115, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Rumbugs", type: "dessert", price: 30, destination: restaurant},
	{name: "Leckerbaer Cookie", type: "dessert", price: 25, destination: restaurant},
	{name: "Lemon Pie with Meringue", type: "dessert", price: 40, destination: restaurant}
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
	{name: "Green Curry", type: "main_course", price: 85, destination: restaurant},
	{name: "Rice Noodles", type: "main_course", price: 45, destination: restaurant},
	{name: "Udon Noodles", type: "main_course", price: 45, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------13-------------------------------------
restaurant = Destination.find_by_name("Nino's Pizza")

appetizers = [
	{name: "Focaccia", type: "appetizer", price: 70, destination: restaurant},
	{name: "Bruschetta", type: "appetizer", price: 20, destination: restaurant},
	{name: "Melon Salad", type: "appetizer", price: 60, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pepperoni Pizza", type: "main_course", price: 50, destination: restaurant},
	{name: "Lasagna", type: "main_course", price: 62, destination: restaurant},
	{name: "Bresaola Sandwich", type: "main_course", price: 50, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------14-------------------------------------
restaurant = Destination.find_by_name("Smag")

main_course = [
	{name: "Turkey Sandwich", type: "main_course", price: 60, destination: restaurant},
	{name: "Salmon Sandwich", type: "main_course", price: 60, destination: restaurant},
	{name: "Veggie Sandwich", type: "main_course", price: 60, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------15-------------------------------------

restaurant = Destination.find_by_name("Rita's Smørrebrød")

main_course = [
	{name: "Tartar Smørrebrød", type: "main_course", price: 80, destination: restaurant},
	{name: "Pariserbøf Smørrebrød", type: "main_course", price: 87, destination: restaurant},
	{name: "Meatball Smørrebrød", type: "main_course", price: 20, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------16-------------------------------------
restaurant = Destination.find_by_name("Grisen")

main_course = [
	{name: "PorkRoast Sandwich", type: "main_course", price: 99, destination: restaurant},
	{name: "BofSandwich", type: "main_course", price: 99, destination: restaurant},
	{name: "Jumbo Burger", type: "main_course", price: 99, destination: restaurant}
]

MenuItem.create!(main_course)

















