p "destroying"

klasses = [Destination, MenuItem]
klasses.each do |k|
	k.destroy_all
end

p "creating"

# --------------------------------------------------PLACES---------------------------------------------------------------

# BARS
# Nørrebro
bar_list = [
  { name: "Kind of Blue", address: "Ravnsborggade 17, 2200 Copenhagen ", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Bo-Bi Bar", address: "Klareboderne 4 1115 Kobenhavn K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Plenum", address: "Sankt Hans Torv 3, 2200 Copenhagen N", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Ruby", address: "Nybrogade 10 / 1203 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Oak Room", address: "Birkegade 10, kl. tv. 2200 København N", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Charlie's Bar", address: "Pilestræde 33, 1112 Copenhagen K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Ølbaren", address: "Elmesgade 2, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "The Barking Dog", address: "Sankt Hans Gade 19, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Mexibar", address: "Elmesgade 27, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Mikkeller & Friends", address: "Stefansgade 35, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Gilt", address: "Rantzausgade 39, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Brus", address: "Guldbergsgade 29 F, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Himmeriget", address: "Aboulevard 27, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Antidote", address: "Jægerborggade 56, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Kølsters Tolv Haner", address: "Rantzausgade 56, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Sabotøren", address: "Fensmarkgade 27, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Dupong", address: "Griffenfeldsgade 52, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Brewers Inc", address: "Gormsgade 25, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Nørrebro Bryghus", address: "Ryesgade 3, 2200 København N", category: "Bar", open_hours: 16, close_hours: 02 },
  #Kgs. Nytorv
  { name: "1105", address: "Kristen Bernikows Gade 4, 1105 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Cafe Viktor", address: "Ny Østergade 8, 1101 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Brønnum", address: "August Bournonvilles Passage 1, 1055 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Nebbiolo", address: "Store Strandstræde 18, 1255 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Palae Bar", address: "Rantzausgade 39, Norrebro", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Balthazar", address: "Ny Østergade 6, 1101 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Fugu", address: "Gammel Strand 42, 1202 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Dahl & Dahl", address: "Dronningens Tværgade 6, 1302 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "K Bar", address: "Ved Stranden 20, 1061 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "The Jane", address: "Gråbrødretorv 8, 1154 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Hviids Vinstue", address: "Kongens Nytorv 19, 1050 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Fisken Pub", address: "Nyhavn 17, 1051 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Ruby", address: "Nybrogade 10, 1203 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "The bird & The Churchkey", address: "Gammel Strand 44, 1202 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Kayak Bar", address: "Børskaj 12, 1221 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Strom", address: "Niels Hemmingsens Gade 32, 1153 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Nyhavn 17", address: "Nyhavn 17, 1051 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "The Standard", address: "Havnegade 44, 1058 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Wessels Kro", address: "Sværtegade 7, 1118 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Bar O", address: "Pilestræde 12, 1112 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Europa 1989", address: "Amagertorv 1, 1160 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  #Vesterbro
  { name: "Old English", address: "Vesterbrogade 2B, 1620 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Curfew", address: "Stenosgade 1, 1616 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "PatePateDk", address: "Slagterboderne 1, 1716 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "BarbBar", address: "Vesterbrogade 47, 1620 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Lidkoeb", address: "Vesterbrogade 72B, 1620 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Zeppelin", address: "Vesterbrogade 45, 1620 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Fleisch", address: "Slagterboderne 7, 1716 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Jernbane Cafeen", address: "Reventlowsgade 16, 1651 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Duck and Cover", address: "Dannebrogsgade 6, 1660 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Kolsters Tolv Haner", address: "Rantzausgade 56, 2200 København N", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Nimb Vinotek", address: "Bernstorffsgade 5, 1577 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Brewpub ", address: "Vestergade 29, 1456 København K", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Nimb Bar", address: "Bernstorffsgade 5, 1577 København V", category: "Bar", open_hours: 16, close_hours: 02 },
  { name: "Dia'legd", address: "Viktoriagade 1, 1655 København V", category: "Bar", open_hours: 16, close_hours: 02 }
]

Destination.create!(bar_list)

# MENU ITEMS
#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Kind of Blue")

beer = [
	{name: "Ale 16", category: "beer", price: 35, destination: bar},
	{name: "Fynsk Forår", category: "beer", price: 35, destination: bar},
	{name: "Bækker Pilsner", category: "beer", price: 30, destination: bar}
]

MenuItem.create!(beer)

wine = [
  {name: "Postales Del Fin Del Mundo", category: "wine", price: 40, destination: bar},
  {name: "Petit Chablis", category: "wine", price: 40, destination: bar},
  {name: "Château Pesquiè Rosé", category: "wine", price: 60, destination: bar}
]

MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Bo-Bi Bar")

beer = [
  {name: "beer", category: "beer", price: 40, destination: bar}
]

MenuItem.create!(beer)

wine = [
  {name: "wine", category: "wine", price: 30, destination: bar}
]

MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Plenum")

beer = [
{name: "beer", category: "beer", price: 40, destination: bar}
]
MenuItem.create!(beer)

wine = [
{name: "wine", category: "wine", price: 45, destination: bar}
]
MenuItem.create!(wine)

cocktail = [
{name: "cocktail", category: "cocktail", price: 60, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Ruby")
beer = [
{name: "Ruby Lager", category: "beer", price: 50, destination: bar},
{name: "Geranium Cobbler", category: "beer", price: 50, destination: bar},
{name: "Short Straw", category: "beer", price: 50, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "Gin Fizz", category: "cocktail", price: 100, destination: bar},
{name: "G.N. (Grape Nations)", category: "cocktail", price: 100, destination: bar},
{name: "Julep & Co.", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Oak Room")
beer = [
{name: "Heineken", category: "beer", price: 45, destination: bar},
{name: "Brooklyn East India Pale Ale", category: "beer", price: 60, destination: bar},
{name: "La Lupulosa IPA", category: "beer", price: 70, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "2015 Domaine de Fontavin", category: "wine", price: 65, destination: bar},
{name: "2016 Domaine de Vedilhan", category: "wine", price: 50, destination: bar},
{name: "2016 Solval", category: "wine", price: 60, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Bushwagon", category: "cocktail", price: 90, destination: bar},
{name: "Improved Daiquiri", category: "cocktail", price: 100, destination: bar},
{name: "Pink Sammy", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Charlie's Bar")
beer = [
{name: "Beer", category: "beer", price: 50, destination: bar}
]
MenuItem.create!(beer)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("The Barking Dog")
beer = [
{name: "The Barking dog Pilsner", category: "beer", price: 30, destination: bar},
{name: "Engel, Hefeweizen Hell", category: "beer", price: 55, destination: bar},
{name: "Saison Dupont", category: "beer", price: 50, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 55, destination: bar},
{name: "Red", category: "wine", price: 55, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Batanga #2", category: "cocktail", price: 90, destination: bar},
{name: "Brown Sugar", category: "cocktail", price: 90, destination: bar},
{name: "Gin & It", category: "cocktail", price: 90, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Mexibar")
beer = [
{name: "Baja Beer", category: "beer", price: 35, destination: bar},
{name: "Mexikanske Øl", category: "beer", price: 42, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "Cosmopolitan", category: "cocktail", price: 44, destination: bar},
{name: "Whiskey Sour", category: "cocktail", price: 44, destination: bar},
{name: "Mojito", category: "cocktail", price: 56, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Gilt")
beer = [
{name: "ØKO THY", category: "beer", price: 35, destination: bar},
{name: "FINAL FRONTIER ", category: "beer", price: 45, destination: bar},
{name: "KARMA CITRA ", category: "beer", price: 45, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Chardonnay 2012", category: "wine", price: 50, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Cafe Negroni", category: "cocktail", price: 105, destination: bar},
{name: "Espresso Martini", category: "cocktail", price: 95, destination: bar},
{name: "Pisco Club", category: "cocktail", price: 95, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Nørrebro Bryghus")
beer = [
{name: "New York Lager", category: "beer", price: 45, destination: bar},
{name: "Bombay Pale Ale", category: "beer", price: 45, destination: bar},
{name: "Ravnsborg Rød", category: "beer", price: 45, destination: bar}
]
MenuItem.create!(beer)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("1105")
beer = [
{name: "beer", category: "beer", price: 30, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "cocktail", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Cafe Viktor")
beer = [
{name: "Guld Tuborg", category: "beer", price: 50, destination: bar},
{name: "Tuborg Super Light ", category: "beer", price: 50, destination: bar},
{name: "Tuborg Classic", category: "beer", price: 50, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "2016 Alameda, Chardonnay, Central Valley, Chile", category: "wine", price: 70, destination: bar},
{name: "2014 Chianti, Barone Ricasoli", category: "wine", price: 75, destination: bar},
{name: "2015 Mas Pouperas Côtes du Rhone Magnum Rose", category: "wine", price: 75, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Four Roses Old Fashioned", category: "cocktail", price: 130, destination: bar},
{name: "Negroni", category: "cocktail", price: 130, destination: bar},
{name: "Espresso Martini", category: "cocktail", price: 130, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Brønnum")
beer = [
{name: "Copper-Keeper", category: "beer", price: 60, destination: bar},
{name: "Seasonal Beer", category: "beer", price: 60, destination: bar},
{name: "Blonde", category: "beer", price: 60, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Sauvignon Blac Le Blac De La Mariee", category: "wine", price: 80, destination: bar},
{name: "Gamay Gamay Sans Tra La La", category: "wine", price: 80, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Bloody Mary", category: "cocktail", price: 140, destination: bar},
{name: "Pisco Express", category: "cocktail", price: 135, destination: bar},
{name: "Amber Fizz", category: "cocktail", price: 135, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Nebbiolo")
MenuItem.create!(beer)
wine = [
	{name: "red wine", category: "wine", price: 75, destination: bar},
	{name: "white wine", category: "wine", price: 100, destination: bar},
	{name: "rosé wine", category: "wine", price: 125, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 75, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Palae Bar")
beer = [
{name: "lager", category: "beer", price: 28, destination: bar},
{name: "Luksus", category: "beer", price: 32, destination: bar},
{name: "Lys Øl", category: "beer", price: 28, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 38, destination: bar},
{name: "Red", category: "wine", price: 38, destination: bar},
{name: "Rose", category: "wine", price: 38, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Spiritus", category: "cocktail", price: 28, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Balthazar")
beer = [
{name: "Kronenbourg 1664", category: "beer", price: 55, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "2014 Macon Blanc Villages Faiveley", category: "wine", price: 85, destination: bar},
{name: "2013 Bourgogne Rouge, Vieilles Vignes", category: "wine", price: 85, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Miracles", category: "cocktail", price: 145, destination: bar},
{name: "Espresso Martini", category: "cocktail", price: 155, destination: bar},
{name: "Downtown Abbey", category: "cocktail", price: 145, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Fugu")
beer = [
{name: "Royal Øko", category: "beer", price: 50, destination: bar},
{name: "Heineken", category: "beer", price: 50, destination: bar},
{name: "Beer of the Season", category: "beer", price: 60, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 70, destination: bar},
{name: "Red", category: "wine", price: 70, destination: bar},
{name: "I am Rose", category: "wine", price: 70, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Espresso Martini", category: "cocktail", price: 85, destination: bar},
{name: "Doctor Cucumber", category: "cocktail", price: 85, destination: bar},
{name: "Pecan Old Fashioned", category: "cocktail", price: 85, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Dahl & Dahl")
beer = [
{name: "Sommerpajan", category: "beer", price: 65, destination: bar},
{name: "Rokkestenen", category: "beer", price: 65, destination: bar},
{name: "Opalsøen", category: "beer", price: 65, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Classique Single Varietals", category: "wine", price: 55, destination: bar},
{name: "Haus Klosterberg", category: "wine", price: 70, destination: bar},
{name: "Arroyo Crianza, Arroyo", category: "wine", price: 85, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Rabarber Hâud", category: "cocktail", price: 85, destination: bar},
{name: "Bornholmsk Granit", category: "cocktail", price: 85, destination: bar},
{name: "Lady Killer", category: "cocktail", price: 85, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("K Bar")
beer = [
{name: "Pilsner", category: "beer", price: 45, destination: bar},
{name: "Ale #1", category: "beer", price: 55, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 60, destination: bar},
{name: "Red", category: "wine", price: 60, destination: bar},
{name: "Rose", category: "wine", price: 60, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "The Salad Martini", category: "cocktail", price: 100, destination: bar},
{name: "Bulldog Gin", category: "cocktail", price: 80, destination: bar},
{name: "Et Stille Drama", category: "cocktail", price: 135, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("The Jane")
beer = [
{name: "beer", category: "beer", price: 75, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "cocktail", category: "cocktail", price: 80, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Hviids Vinstue")
beer = [
{name: "beer", category: "beer", price: 60, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Wine", category: "wine", price: 40, destination: bar}
]
MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Fisken Pub")
beer = [
{name: "beer", category: "beer", price: 55, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 45, destination: bar}
]
MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("The bird & The Churchkey")
beer = [
{name: "Heineken", category: "beer", price: 50, destination: bar},
{name: "Royal Øko", category: "beer", price: 50, destination: bar},
{name: "Royal Øko Classic", category: "beer", price: 50, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "42-00", category: "cocktail", price: 95, destination: bar},
{name: "Mr. Henrik Hammer", category: "cocktail", price: 95, destination: bar},
{name: "The Neoclassic", category: "cocktail", price: 95, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Kayak Bar")
beer = [
{name: "Fadøl", category: "beer", price: 45, destination: bar},
{name: "Special øl", category: "beer", price: 60, destination: bar},
{name: "Sol", category: "beer", price: 40, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 50, destination: bar},
{name: "Red", category: "wine", price: 50, destination: bar},
{name: "Rose", category: "wine", price: 50, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Aperol Spritz", category: "cocktail", price: 85, destination: bar},
{name: "Cava Spritz", category: "cocktail", price: 85, destination: bar},
{name: "Classic Cocktails", category: "cocktail", price: 90, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Strom")
beer = [
{name: "beer", category: "beer", price: 60, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Wine", category: "wine", price: 70, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Nyhavn 17")
beer = [
{name: "Nyhavn 17 Ale", category: "beer", price: 38, destination: bar},
{name: "Carlsberg Pilsner", category: "beer", price: 32, destination: bar},
{name: "Turborg Classic", category: "beer", price: 34, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Bestheim, Roayon de Lune, Alsace, 2016", category: "wine", price: 95, destination: bar},
{name: "Veranza, Tinto, Valle De La Cinca, 2015", category: "wine", price: 85, destination: bar},
{name: "Raimat Clamor Rosado, Catalonien", category: "wine", price: 80, destination: bar}
]
MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Wessels Kro")
beer = [
{name: "beer", category: "beer", price: 45, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 40, destination: bar}
]
MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Bar O")
beer = [
{name: "Beer", category: "beer", price: 80, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 70, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 110, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Europa 1989")
beer = [
{name: "CARLSBERG", category: "beer", price: 49, destination: bar},
{name: "Turborg Classic", category: "beer", price: 52, destination: bar},
{name: "Tuborg Guld", category: "beer", price: 54, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Sauvignon Blanc", category: "wine", price: 75, destination: bar},
{name: "Merlot", category: "wine", price: 80, destination: bar},
{name: "D2 Rosé", category: "wine", price: 85, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Cosmopolitan", category: "cocktail", price: 94, destination: bar},
{name: "Mojito", category: "cocktail", price: 99, destination: bar},
{name: "Espresso Martini", category: "cocktail", price: 99, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Old English")
beer = [
{name: "Fadøl", category: "beer", price: 45, destination: bar}
]
MenuItem.create!(beer)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Curfew")
beer = [
{name: "Brooklyn Lager Pre Prohibition Style", category: "beer", price: 75, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Muros Antigos Loureiro 2015", category: "wine", price: 80, destination: bar},
{name: "EA, Cartuxa, Alentejo 2014", category: "wine", price: 80, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Clockwork orange", category: "cocktail", price: 125, destination: bar},
{name: "Tess of the D’urbervilles", category: "cocktail", price: 125, destination: bar},
{name: "Negroni", category: "cocktail", price: 125, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("PatePate")
wine = [
{name: "lopez de haro Vintae · Rosado ", category: "wine", price: 75, destination: bar},
{name: "Le Manpòt Blanc Domaine Bassac", category: "wine", price: 85, destination: bar},
{name: "Plan de dieu Domaine Durieu ", category: "wine", price: 85, destination: bar}
]
MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("BarbBar")
beer = [
{name: "Heineken - Extra Cold", category: "beer", price: 32, destination: bar},
{name: "Royal Pilsner Organic", category: "beer", price: 32, destination: bar},
{name: "Royal Classic Organic", category: "beer", price: 32, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "Gin Tonic", category: "cocktail", price: 40, destination: bar},
{name: "Brown Sugar", category: "cocktail", price: 90, destination: bar},
{name: "Gin & It", category: "cocktail", price: 90, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Lidkoeb")
beer = [
{name: "Green Keeper", category: "beer", price: 50, destination: bar},
{name: "Ruby Lager", category: "beer", price: 50, destination: bar},
{name: "Founders All Day IPA", category: "beer", price: 60, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "Calles Jazz Riesling", category: "wine", price: 70, destination: bar},
{name: "Le Rouge de Cornus, Garreliere", category: "wine", price: 70, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Vores Daiquir", category: "cocktail", price: 100, destination: bar},
{name: "Om Kvæde", category: "cocktail", price: 120, destination: bar},
{name: "Skrædder Punch", category: "cocktail", price: 110, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Zeppelin")
beer = [
{name: "Turborg Classic", category: "beer", price: 30, destination: bar},
{name: "Turborg Rå, IPA", category: "beer", price: 40, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "White", category: "wine", price: 50, destination: bar},
{name: "Red", category: "wine", price: 50, destination: bar},
{name: "Rose", category: "wine", price: 50, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "Gin & Tonic", category: "cocktail", price: 70, destination: bar},
{name: "Rum & Coke", category: "cocktail", price: 70, destination: bar},
{name: "Tom Collins", category: "cocktail", price: 90, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Fleisch")
beer = [
{name: "beer", category: "beer", price: 40, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 70, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 90, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Jernbane Cafeen")
beer = [
{name: "beer", category: "beer", price: 70, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 50, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Duck and Cover")
beer = [
{name: "beer", category: "beer", price: 70, destination: bar}
]
MenuItem.create!(beer)
cocktail = [
{name: "cocktail", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Kolsters Tolv Haner")
beer = [
{name: "beer", category: "beer", price: 50, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 35, destination: bar}
]
MenuItem.create!(wine)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Nimb Vinotek")
beer = [
{name: "beer", category: "beer", price: 90, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 80, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Curfew")
beer = [
{name: "beer", category: "beer", price: 90, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 80, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 100, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Brewpub ")
beer = [
{name: "beer", category: "beer", price: 65, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 65, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 70, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Nimb Bar")
beer = [
{name: "beer", category: "beer", price: 75, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 85, destination: bar}
]
MenuItem.create!(wine)
cocktail = [
{name: "cocktail", category: "cocktail", price: 120, destination: bar}
]
MenuItem.create!(cocktail)

#-------------------------------------------------------------------------------
bar = Destination.find_by_name("Dia'legd")
beer = [
{name: "beer", category: "beer", price: 45, destination: bar}
]
MenuItem.create!(beer)
wine = [
{name: "wine", category: "wine", price: 150, destination: bar}
]
MenuItem.create!(wine)

# --------------------------------------------------RESTAURANTS--------------------------------------------------------
# Norrebro-------------------
restaurant_list = [
  { name: "Bæst", address: "Guldbergsgade 29, DK-2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Fætter Fætter", address: "Griffenfeldsgade 17, 2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Sidecar", address: "Skyttegade 5, 2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Grisen", address: "Fredensgade 5, DK-2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Mirabelle", address: "Guldbergsgade 29 2200 København N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Ramen to Biiru", address: "Griffenfeldsgade 28, 2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nepali Bhancha", address: "Tagensvej 102, 2200 København N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Banana Joe", address: "Elmegade 18, 2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Banh Mi", address: "2200 n, Elmegade 20, 2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Sund Sult", address: "Elmegade 8, DK-2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "YoBurger", address: "NØRREGADE 2 1165 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Plenum", address: "Sankt Hans Torv 3, 2200 Copenhagen N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nordic Noodles", address: "Nørrebrogade 29, 2200 København N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nino's Pizza", address: "Guldbergsgade 18, 2200 København N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nicecream", address: "Elmegade 30, 2200 København N", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Rita's Smørrebrød", address: "Fælledvej 11, Norrebro", category: "Restaurant", open_hours: 17, close_hours: 22 },

  # Kgs. Nytorv---------------------------------
  { name: "Fiat", address: "Kongens Nytorv 18, 1050 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Geist", address: "Kongens Nytorv 8, 1050 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Madklubben", address: "Kongens Nytorv 26, 1050 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Mash", address: "Bredgade 20, 1260 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Ravage", address: "Kongens Nytorv 16, 1050 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Fish Market", address: "Hovedvagtsgade 2, 1103 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Union Kitchen", address: "Store Strandstræde 21, 1255 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Hafnia Bar", address: "Store Regnegade 26A, 1110 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Pizza Huset", address: "Gothersgade 21, 1123 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Fredco's Deli", address: "Denmark, Grønnegade 32, 1107 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Wokshop", address: "Ny Adelgade 6, 1104 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Sticks n Sushi", address: "Borgergade 13, 1300 Copenhagen", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Umami", address: "Store Kongensgade 59, 1264 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Serenity Cupcake", address: "Grønnegade 32", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Restaurant Koef", address: "Landgreven 3, 1301 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nyhavns Faerge", address: "Nyhavn 5, 1051 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Pluto", address: "Borgergade 16, 1300 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Hot Buns", address: "Gothersgade 3, 1123 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Nyhavn Pizzeria", address: "Lille Strandstræde 6, 1254 København K", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Wok On", address: "Gothersgade 15", category: "Restaurant", open_hours: 17, close_hours: 22 },

  #VERSTERBRO
  { name: "Madklubben", address: "Vesterbrogade 62, 1620 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Jensens Bøfhus", address: "Vesterbrogade 11A, 1620 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Groeften", address: "Vesterbrogade 3, 1620 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Kebabish Vestebro", address: "Vesterbrogade 13, 1620 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Tommi’s", address: "Høkerboderne 21-23, 1712 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Frascati", address: "Vesterbrogade 9, 1620 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Al-Diwan", address: "Vesterbrogade 94, 1620 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Sticks n Sushi", address: "Istedgade 62, 1650 København V", category: "Restaurant", open_hours: 17, close_hours: 22 },
  { name: "Neighborhood", address: "Istegade 27", category: "Restaurant", open_hours: 17, close_hours: 22 }
]

Destination.create!(restaurant_list)

Destination.all.each do |destination|
  destination.photo_url = "/Users/nicklasvang/code/ashleeste/seed_images/#{destination.name}.jpg"
  destination.save
end

# --------------------------------------NORREBRO--------------------------------

# ---------------------------------------1--------------------------------------

restaurant = Destination.find_by_name("Bæst")

appetizers = [
	{name: "Pickled Danish mussels", category: "appetizer", price: 40, destination: restaurant},
	{name: "Olives stuffed with almonds", category: "appetizer", price: 40, destination: restaurant},
	{name: "pickles, ciccioli, Mirabelle bread", category: "appetizer", price: 55, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{ name: "Margherita Pizza", category: "main_course", price: 85, destination: restaurant },
	{ name: "Grilled chicken wings", category: "main_course", price: 130, destination: restaurant },
	{ name: "Grilled Polenta", category: "main_course", price: 95, destination: restaurant }
]


# ---------------------------------------2--------------------------------------

restaurant = Destination.find_by_name("Fætter Fætter")

appetizers = [
	{name: "Croque Cousin", category: "appetizer", price: 45, destination: restaurant},
	{name: "Mushroom Toast", category: "appetizer", price: 45, destination: restaurant},
	{name: "Avocado Goat Toast", category: "appetizer", price: 35, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Veggie Toast", category: "main_course", price: 95, destination: restaurant},
	{name: "Toast Experience", category: "main_course", price: 95, destination: restaurant},
	{name: "When in Rome", category: "main_course", price: 255, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Cinnamon toast", category: "dessert", price: 35, destination: restaurant},
	{name: "Crisps", category: "dessert", price: 20, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------3--------------------------------------
restaurant = Destination.find_by_name("Sidecar")

appetizers = [
	{name: "Breakfast Plate", category: "appetizer", price: 89, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Sidecar Brunch", category: "main_course", price: 149, destination: restaurant},
	{name: "Veggie Brunch", category: "main_course", price: 169, destination: restaurant},
	{name: "Skyttegade Brunch", category: "main_course", price: 169, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------4--------------------------------------
restaurant = Destination.find_by_name("Mirabelle")

appetizers = [
	{name: "Antipasti Plate", category: "appetizer", price: 135, destination: restaurant},
	{name: "Salad", category: "appetizer", price: 95, destination: restaurant},
	{name: "Burrata", category: "appetizer", price: 125, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Pasta", category: "main_course", price: 120, destination: restaurant},
	{name: "Braised Lamb Pasta", category: "main_course", price: 120, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Tiramisu", category: "dessert", price: 60, destination: restaurant},
	{name: "Lemon Granita", category: "dessert", price: 40, destination: restaurant},
	{name: "Gelato", category: "dessert", price: 50, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------5--------------------------------------
restaurant = Destination.find_by_name("Ramen to Biiru")

appetizers = [
	{name: "Edamame Beans", category: "appetizer", price: 40, destination: restaurant},
	{name: "Kimchi", category: "appetizer", price: 40, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Shio Ramen", category: "main_course", price: 100, destination: restaurant},
	{name: "Spicy Miso Ramen", category: "main_course", price: 115, destination: restaurant},
	{name: "No-Meat Ramen", category: "main_course", price: 100, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------6--------------------------------------
restaurant = Destination.find_by_name("Nepali Bhancha")

appetizers = [
	{name: "Veg Pakoda", category: "appetizer", price: 59, destination: restaurant},
	{name: "Fish Chilli", category: "appetizer", price: 69, destination: restaurant},
	{name: "Chicken Sekuwa", category: "appetizer", price: 59, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Vegetarian Curry", category: "main_course", price: 119, destination: restaurant},
	{name: "Saag Paneer", category: "main_course", price: 119, destination: restaurant},
	{name: "Lamb Masala", category: "main_course", price: 139, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Kheer", category: "dessert", price: 39, destination: restaurant},
	{name: "Dahi Lalmohani", category: "dessert", price: 49, destination: restaurant},
	{name: "MangoBrullé", category: "dessert", price: 59, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------7--------------------------------------
restaurant = Destination.find_by_name("Banana Joe")

appetizers = [
	{name: "Pommes Frites", category: "appetizer", price: 25, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Burger", category: "main_course", price: 35, destination: restaurant},
	{name: "Vegetarburger", category: "main_course", price: 40, destination: restaurant},
	{name: "Befsandwich", category: "main_course", price: 30, destination: restaurant}
]

MenuItem.create!(main_course)


# ---------------------------------------8--------------------------------------
restaurant = Destination.find_by_name("Banh Mi")

appetizers = [
	{name: "Summer Rolls", category: "appetizer", price: 42, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Bun Thang Soup", category: "main_course", price: 88, destination: restaurant},
	{name: "Bún - Noodle Salad", category: "main_course", price: 84, destination: restaurant},
	{name: "Dâu Phu Cà Ri Sandwich", category: "main_course", price: 52, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Icecream with condensed milk", category: "dessert", price: 30, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------9--------------------------------------
restaurant = Destination.find_by_name("Sund Sult")

appetizers = [
	{name: "Salad", category: "appetizer", price: 42, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Hummus Sandwich", category: "main_course", price: 52, destination: restaurant},
	{name: "Pastrami Mozzarella Toast", category: "main_course", price: 49, destination: restaurant},
	{name: "Grøntsagssuppe", category: "main_course", price: 42, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Strawberry Smoothie", category: "dessert", price: 42, destination: restaurant},
	{name: "Mango Banana Smoothie", category: "dessert", price: 42, destination: restaurant},
	{name: "Blueberry Banana Smoothie", category: "dessert", price: 42, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------10-------------------------------------
restaurant = Destination.find_by_name("YoBurger")

appetizers = [
	{name: "Crinkle Cut Fries", category: "appetizer", price: 25, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Bacon YoBurger", category: "main_course", price: 104, destination: restaurant},
	{name: "Avocado YoBurger", category: "main_course", price: 104, destination: restaurant},
	{name: "Portobello Burger", category: "main_course", price: 104, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------11-------------------------------------
restaurant = Destination.find_by_name("Plenum")

appetizers = [
	{name: "Croissant", category: "appetizer", price: 18, destination: restaurant},
	{name: "Truffle Chips", category: "appetizer", price: 30, destination: restaurant},
	{name: "Peanuts and smoked almonds", category: "appetizer", price: 30, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Mozzarella Sandwich", category: "main_course", price: 60, destination: restaurant},
	{name: "Risotto", category: "main_course", price: 105, destination: restaurant},
	{name: "Fried Chicken Salad", category: "main_course", price: 115, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Rumbugs", category: "dessert", price: 30, destination: restaurant},
	{name: "Leckerbaer Cookie", category: "dessert", price: 25, destination: restaurant},
	{name: "Lemon Pie with Meringue", category: "dessert", price: 40, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------12-------------------------------------
restaurant = Destination.find_by_name("Nordic Noodles")

main_course = [
	{name: "Green Curry", category: "main_course", price: 85, destination: restaurant},
	{name: "Rice Noodles", category: "main_course", price: 45, destination: restaurant},
	{name: "Udon Noodles", category: "main_course", price: 45, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------13-------------------------------------
restaurant = Destination.find_by_name("Nino's Pizza")

appetizers = [
	{name: "Focaccia", category: "appetizer", price: 70, destination: restaurant},
	{name: "Bruschetta", category: "appetizer", price: 20, destination: restaurant},
	{name: "Melon Salad", category: "appetizer", price: 60, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pepperoni Pizza", category: "main_course", price: 50, destination: restaurant},
	{name: "Lasagna", category: "main_course", price: 62, destination: restaurant},
	{name: "Bresaola Sandwich", category: "main_course", price: 50, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------14-------------------------------------
restaurant = Destination.find_by_name("Smag")

main_course = [
	{name: "Turkey Sandwich", category: "main_course", price: 60, destination: restaurant},
	{name: "Salmon Sandwich", category: "main_course", price: 60, destination: restaurant},
	{name: "Veggie Sandwich", category: "main_course", price: 60, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------15-------------------------------------

restaurant = Destination.find_by_name("Rita's Smørrebrød")

main_course = [
	{name: "Tartar Smørrebrød", category: "main_course", price: 80, destination: restaurant},
	{name: "Pariserbøf Smørrebrød", category: "main_course", price: 87, destination: restaurant},
	{name: "Meatball Smørrebrød", category: "main_course", price: 20, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------16-------------------------------------
restaurant = Destination.find_by_name("Grisen")

main_course = [
	{name: "PorkRoast Sandwich", category: "main_course", price: 99, destination: restaurant},
	{name: "BofSandwich", category: "main_course", price: 99, destination: restaurant},
	{name: "Jumbo Burger", category: "main_course", price: 99, destination: restaurant}
]

MenuItem.create!(main_course)

# --------------------------------------KGS. NYTORV--------------------------------

# ---------------------------------------1-------------------------------------

restaurant = Destination.find_by_name("Fiat")

appetizers = [
	{name: "Caprese", category: "appetizer", price: 155, destination: restaurant},
	{name: "Crab Bruschetta", category: "appetizer", price: 165, destination: restaurant},
	{name: "Endivia Salad", category: "appetizer", price: 125, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Proscuitto Pizze", category: "main_course", price: 155, destination: restaurant},
	{name: "Wild Garlic Skewers", category: "main_course", price: 215, destination: restaurant},
	{name: "Steak ala Fiorentina", category: "main_course", price: 348, destination: restaurant}
]

 MenuItem.create!(main_course)

  desserts = [
	{name: "Tiramisu", category: "dessert", price: 85, destination: restaurant},
	{name: "Caramel Panna Cotta", category: "dessert", price: 95, destination: restaurant},
	{name: "Ricotta Pie with Pears", category: "dessert", price: 85, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------2-------------------------------------

restaurant = Destination.find_by_name("Geist")

appetizers = [
	{name: "Raw Zucchini with Pistachi Curry", category: "appetizer", price: 95, destination: restaurant},
	{name: "Stewed Spinach with Black Kale", category: "appetizer", price: 95, destination: restaurant},
	{name: "Potato Mash with Löjrom", category: "appetizer", price: 145, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Charred Beef Tenderloin", category: "main_course", price: 250, destination: restaurant},
	{name: "Crisphy Artichokes with Suckling Pig", category: "main_course", price: 225, destination: restaurant},
	{name: "Heart of Lamb", category: "main_course", price: 175, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Chocolate Tart", category: "dessert", price: 95, destination: restaurant},
	{name: "Caramelized Bread", category: "dessert", price: 125, destination: restaurant},
	{name: "Salted Wasabi Cream Toffee", category: "dessert", price: 95, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------3-------------------------------------
restaurant = Destination.find_by_name("Madklubben")

appetizers = [
	{name: "Caesar Salad", category: "appetizer", price: 100, destination: restaurant},
	{name: "Avocado Smash", category: "appetizer", price: 100, destination: restaurant},
	{name: "Croque Royal", category: "appetizer", price: 100, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Biksemad Royal", category: "main_course", price: 150, destination: restaurant},
	{name: "Cheeseburger", category: "main_course", price: 125, destination: restaurant},
	{name: "Beef Tartare", category: "main_course", price: 100, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Chocolate Mousse", category: "dessert", price: 50, destination: restaurant},
	{name: "Coupe Royal", category: "dessert", price: 50, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------4-------------------------------------
restaurant = Destination.find_by_name("Mash")

appetizers = [
	{name: "Charcuterie", category: "appetizer", price: 115, destination: restaurant},
	{name: "Grillet Carpaccio", category: "appetizer", price: 95, destination: restaurant},
	{name: "Løgsuppe", category: "appetizer", price: 95, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Filet", category: "main_course", price: 265, destination: restaurant},
	{name: "Mørbrad", category: "main_course", price: 315, destination: restaurant},
	{name: "Mash Burger", category: "main_course", price: 115, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Rumbugs", category: "dessert", price: 30, destination: restaurant},
	{name: "Leckerbaer Cookie", category: "dessert", price: 25, destination: restaurant},
	{name: "Lemon Pie with Meringue", category: "dessert", price: 185, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------5-------------------------------------

restaurant = Destination.find_by_name("Ravage")

appetizers = [
	{name: "Scallops", category: "appetizer", price: 111, destination: restaurant},
	{name: "Duck Terrine", category: "appetizer", price: 126, destination: restaurant},
	{name: "Moules Marinieres", category: "appetizer", price: 126, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Fish of the day", category: "main_course", price: 245, destination: restaurant},
	{name: "Stuffed Quail", category: "main_course", price: 245, destination: restaurant},
	{name: "Crispy Fried Pork Belly", category: "main_course", price: 215, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Crème Brûlée", category: "dessert", price: 104, destination: restaurant},
	{name: "Traditional Danish Rice Pudding", category: "dessert", price: 111, destination: restaurant},
	{name: "Gateau Marcel", category: "dessert", price: 126, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------6-------------------------------------

restaurant = Destination.find_by_name("Fish Market")

appetizers = [
	{name: "Ceviche", category: "appetizer", price: 125, destination: restaurant},
	{name: "Bouillabaisse", category: "appetizer", price: 145, destination: restaurant},
	{name: "Østers", category: "appetizer", price: 145, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Søtunge", category: "main_course", price: 245, destination: restaurant},
	{name: "Hummer", category: "main_course", price: 375, destination: restaurant},
	{name: "Oksemørbrad", category: "main_course", price: 285, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Chocolat", category: "dessert", price: 95, destination: restaurant},
	{name: "Sødt", category: "dessert", price: 45, destination: restaurant},
	{name: "Profiteroles", category: "dessert", price: 95, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------7-------------------------------------

restaurant = Destination.find_by_name("Union Kitchen")

appetizers = [
	{name: "Fishcake Balls", category: "appetizer", price: 99, destination: restaurant},
	{name: "Truffle Fries", category: "appetizer", price: 69, destination: restaurant},
	{name: "Green Salad", category: "appetizer", price: 55, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Spaghetti", category: "main_course", price: 75, destination: restaurant},
	{name: "Bowl of Pulled Pork", category: "main_course", price: 132, destination: restaurant},
	{name: "Croque Monsieur", category: "main_course", price: 115, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Apple Crumble", category: "dessert", price: 75, destination: restaurant},
	{name: "White Chocolate Cheesecake", category: "dessert", price: 69, destination: restaurant},
	{name: "Sticky Toffee Pudding", category: "dessert", price: 75, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------8-------------------------------------
restaurant = Destination.find_by_name("Hafnia")

appetizers = [
	{name: "Acai Bowl", category: "appetizer", price: 70, destination: restaurant},
	{name: "Suppe", category: "appetizer", price: 80, destination: restaurant},
	{name: "Lille Salat", category: "appetizer", price: 70, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Tunmousse Sandwich", category: "main_course", price: 70, destination: restaurant},
	{name: "Quinoa Bowl", category: "main_course", price: 95, destination: restaurant},
	{name: "Hafnia Burger", category: "main_course", price: 135, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "HJ RomKugle", category: "dessert", price: 30, destination: restaurant},
	{name: "Granolabar", category: "dessert", price: 25, destination: restaurant},
	{name: "Raw Cake", category: "dessert", price: 45, destination: restaurant}
]

MenuItem.create!(desserts)

# ---------------------------------------9-------------------------------------

restaurant = Destination.find_by_name("Pizza Huset")

main_course = [
	{name: "Summer Sandwich", category: "main_course", price: 50, destination: restaurant},
	{name: "Bolognese Pizza", category: "main_course", price: 62, destination: restaurant},
	{name: "Truffle Pizza", category: "main_course", price: 72, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------10------------------------------------

restaurant = Destination.find_by_name("Tonkin")

appetizers = [
	{name: "Nem Rán", category: "appetizer", price: 45, destination: restaurant},
	{name: "Wontons", category: "appetizer", price: 45, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Bún Nam Bô", category: "main_course", price: 96, destination: restaurant},
	{name: "Bô Kho", category: "main_course", price: 86, destination: restaurant},
	{name: "Bánh Mì", category: "main_course", price: 58, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Chè Thung - Kokosgrød", category: "dessert", price: 36, destination: restaurant},
	{name: "Tonkin Chokolademousse", category: "dessert", price: 36, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------11------------------------------------
restaurant = Destination.find_by_name("Fredco's Deli")

appetizers = [
	{name: "Soup", category: "appetizer", price: 55, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Pesto Chicken Salad", category: "main_course", price: 75, destination: restaurant},
	{name: "Chicken Curry Sandwich", category: "main_course", price: 60, destination: restaurant},
]

MenuItem.create!(main_course)

# ---------------------------------------12------------------------------------

restaurant = Destination.find_by_name("Wokshop")

appetizers = [
	{name: "Shrimp Chips", category: "appetizer", price: 40, destination: restaurant},
	{name: "Rice Cakes", category: "appetizer", price: 45, destination: restaurant},
	{name: "Crispy Beef", category: "appetizer", price: 75, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Chicken Coconut Soup - Tom Kha Gai", category: "main_course", price: 120, destination: restaurant},
	{name: "Phad See-Iew Gai Noodles", category: "main_course", price: 135, destination: restaurant},
	{name: "Red Duck Curry", category: "main_course", price: 159, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Fried Banana with Ice Cream", category: "dessert", price: 75, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------13------------------------------------

restaurant = Destination.find_by_name("Sticks n Sushi")

appetizers = [
	{name: "Spicy Misosuppe", category: "appetizer", price: 47, destination: restaurant},
	{name: "Fried Cauliflower", category: "appetizer", price: 36, destination: restaurant},
	{name: "Jerusalem Artichokes", category: "appetizer", price: 39, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Salmon Sushi Plate", category: "main_course", price: 189, destination: restaurant},
	{name: "Nana Ban Plate", category: "main_course", price: 168, destination: restaurant},
	{name: "Solo Sushi Plate", category: "main_course", price: 179, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Match Fondant", category: "dessert", price: 30, destination: restaurant},
	{name: "Marcel Chocolate Cake", category: "dessert", price: 30, destination: restaurant},
	{name: "Dark Chocolate Balls", category: "dessert", price: 30, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------14------------------------------------

restaurant = Destination.find_by_name("Umami")

appetizers = [
	{name: "Rio Frio Organic Caviar", category: "appetizer", price: 400, destination: restaurant},
	{name: "New Style Sashimi", category: "appetizer", price: 140, destination: restaurant},
	{name: "Foi Gras", category: "appetizer", price: 160, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Lobster Tempura", category: "main_course", price: 270, destination: restaurant},
	{name: "Canette Breast", category: "main_course", price: 160, destination: restaurant},
	{name: "Miso Braised Short Rib", category: "main_course", price: 160, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Umami Chocolate Dessert", category: "dessert", price: 120, destination: restaurant},
	{name: "Créme Brûleé", category: "dessert", price: 90, destination: restaurant},
	{name: "Matcha Panna Cotta", category: "dessert", price: 90, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------15------------------------------------

restaurant = Destination.find_by_name("Serenity Cupcake")

desserts = [
	{name: "8 Mini Cupcakes", category: "dessert", price: 144, destination: restaurant},
	{name: "Cupcake", category: "dessert", price: 35, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------16------------------------------------

restaurant = Destination.find_by_name("Koefoed")

appetizers = [
	{name: "Chicken Confit", category: "appetizer", price: 125, destination: restaurant},
	{name: "Burned Scallops", category: "appetizer", price: 145, destination: restaurant},
	{name: "Salted Salmon", category: "appetizer", price: 95, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Breast of Pork", category: "main_course", price: 215, destination: restaurant},
	{name: "Fried Cod", category: "main_course", price: 235, destination: restaurant},
	{name: "Duck", category: "main_course", price: 255, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Marzipan", category: "dessert", price: 110, destination: restaurant},
	{name: "Ice Cream with Pickled Cherries", category: "dessert", price: 110, destination: restaurant},
	{name: "Bornholm Cheese with Caramelized Rye Bread", category: "dessert", price: 120, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------17------------------------------------

restaurant = Destination.find_by_name("NyhavnsFærgekro")

appetizers = [
	{name: "Whitefish Roe", category: "appetizer", price: 95, destination: restaurant},
	{name: "Rejecocktail", category: "appetizer", price: 85, destination: restaurant},
	{name: "Tartlets", category: "appetizer", price: 65, destination: restaurant}
]

MenuItem.create!(appetizers)

# ---------------------------------------18------------------------------------

restaurant = Destination.find_by_name("Pluto")

appetizers = [
	{name: "Gillardeau Østers", category: "appetizer", price: 55, destination: restaurant},
	{name: "Ventresca Tun", category: "appetizer", price: 70, destination: restaurant},
	{name: "Charcuterie", category: "appetizer", price: 50, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Torsk", category: "main_course", price: 135, destination: restaurant},
	{name: "Pighvar", category: "main_course", price: 175, destination: restaurant},
	{name: "Hummer Hotdog", category: "main_course", price: 195, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------19------------------------------------

restaurant = Destination.find_by_name("Hot Buns")

appetizers = [
	{name: "Chicken Wings", category: "appetizer", price: 45, destination: restaurant},
	{name: "Chili Cheese Tops", category: "appetizer", price: 45, destination: restaurant},
	{name: "Kongerejer", category: "appetizer", price: 45, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Veggie Burger", category: "main_course", price: 100, destination: restaurant},
	{name: "The Dane Burger", category: "main_course", price: 130, destination: restaurant},
	{name: "The Hangover Burger", category: "main_course", price: 160, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
	{name: "Sundae", category: "dessert", price: 50, destination: restaurant},
]

MenuItem.create!(desserts)

# ---------------------------------------20------------------------------------

restaurant = Destination.find_by_name("Nyhavn Pizza")

appetizers = [
	{name: "Fries", category: "appetizer", price: 34, destination: restaurant},
	{name: "Garlic Bread", category: "appetizer", price: 42, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Nachos", category: "main_course", price: 60, destination: restaurant},
	{name: "Pollo Burrito", category: "main_course", price: 89, destination: restaurant},
	{name: "Falafel Durum", category: "main_course", price: 55, destination: restaurant}
]

MenuItem.create!(main_course)

# ---------------------------------------21------------------------------------

restaurant = Destination.find_by_name("Wok On")

appetizers = [
	{name: "Ebi Tempura", category: "appetizer", price: 55, destination: restaurant},
	{name: "Spring Rolls", category: "appetizer", price: 35, destination: restaurant},
]

MenuItem.create!(appetizers)

main_course = [
	{name: "Tofu Rice Noodles", category: "main_course", price: 60, destination: restaurant},
	{name: "Prawn Udon Noodles", category: "main_course", price: 65, destination: restaurant},
	{name: "Eggplant with Mushrooms", category: "main_course", price: 51, destination: restaurant}
]

MenuItem.create!(main_course)

# --------------------------------------KGS. NYTORV END------------------------


#-------------------------------VESTERBRO START--------------------------------------

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Jensens Bøfhus")

appetizers = [
  {name: "Jensens vegetarian course", category: "appetizer", price: 75, destination: restaurant},
  {name: "Cold-smoked salmon", category: "appetizer", price: 75, destination: restaurant},
  {name: "Jensens steak salad", category: "appetizer", price: 75, destination: restaurant}
]

MenuItem.create!(appetizers)
  main_course = [
  {name: "Ribeye", category: "main_course", price: 200, destination: restaurant},
  {name: "Beef tenderloin", category: "main_course", price: 225, destination: restaurant},
  {name: "Strip steak", category: "main_course", price: 250, destination: restaurant}
]

MenuItem.create!(main_course)
  desserts = [
  {name: "Belgian chocolate cake", category: "dessert", price: 50, destination: restaurant},
  {name: "New York Style Cheesecake", category: "dessert", price: 50, destination: restaurant},
  {name: "Coffee & sweet", category: "dessert", price: 50, destination: restaurant}
]

MenuItem.create!(desserts)

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Groeften")

appetizers = [
  {name: "Kartoffelsuppe", category: "appetizer", price: 95, destination: restaurant},
  {name: "Græskarsuppe", category: "appetizer", price: 95, destination: restaurant},
  {name: "75gr. søkogte rejer", category: "appetizer", price: 125, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
  {name: "Grøftens Stjerneskud", category: "main_course", price: 165, destination: restaurant},
  {name: "200g. hakkebøf", category: "main_course", price: 215, destination: restaurant},
  {name: "Kokkens rørte tatar", category: "main_course", price: 179, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
  {name: "Gammeldags Æblekage", category: "dessert", price: 89, destination: restaurant},
  {name: "Grøftens Citronfromage", category: "dessert", price: 89, destination: restaurant},
  {name: "Chokolademousse", category: "dessert", price: 99, destination: restaurant}
]

MenuItem.create!(desserts)

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Kebabish Vestebro")

appetizers = [
  {name: "Mix Salat", category: "appetizer", price: 35, destination: restaurant},
  {name: "Chicken Salad", category: "appetizer", price: 45, destination: restaurant},
  {name: "Homus", category: "appetizer", price: 15, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
  {name: "Seekh Kebab Ret", category: "main_course", price: 89, destination: restaurant},
  {name: "Chicken Tikka Ret", category: "main_course", price: 89, destination: restaurant},
  {name: "Lamb Tikka Ret", category: "main_course", price: 89, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
  {name: "Kheer", category: "dessert", price: 35, destination: restaurant},
  {name: " Falooda", category: "dessert", price: 35, destination: restaurant},
]

MenuItem.create!(desserts)

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Tommi’s")

main_course = [
  {name: "Burger", category: "main_course", price: 69, destination: restaurant},
  {name: "Cheese Burger", category: "main_course", price: 74, destination: restaurant},
  {name: "Veggie Burger", category: "main_course", price: 69, destination: restaurant}
]

MenuItem.create!(main_course)

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Frascati")

appetizers = [
  {name: "Bruschetta Al Pomodoro E Basilico", category: "appetizer", price: 49, destination: restaurant},
  {name: "Tris Di Bruschetta Fantasia", category: "appetizer", price: 69, destination: restaurant},
  {name: "Mozzarella Di Bufala E Pomodoro", category: "appetizer", price: 95, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
  {name: "Ravioli Di Magro Al Pomodoro E Basilico", category: "main_course", price: 139, destination: restaurant},
  {name: "Pizza Margherita", category: "main_course", price: 95, destination: restaurant},
  {name: "Tagliatelle Al Salmone e Zucchine", category: "main_course", price: 149, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
  {name: "Tiramisu", category: "dessert", price: 65, destination: restaurant},
  {name: "Tartufo Al Cioccolato", category: "dessert", price: 69, destination: restaurant},
  {name: "Banana Split", category: "dessert", price: 65, destination: restaurant}
]

MenuItem.create!(desserts)

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Al-Diwan")

appetizers = [
  {name: "Soup", category: "appetizer", price: 10, destination: restaurant},
  {name: "Samosa", category: "appetizer", price: 55, destination: restaurant},
  {name: "Chicken Tikka", category: "appetizer", price: 49, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
  {name: "Al-Diwan Lamb Jalfrezi", category: "main_course", price: 149, destination: restaurant},
  {name: "Beef Bhuna", category: "main_course", price: 149, destination: restaurant},
  {name: "Aloo Methi", category: "main_course", price: 99, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
  {name: "Ice Cream", category: "dessert", price: 45, destination: restaurant},
  {name: "Kulfr", category: "dessert", price: 55, destination: restaurant},
  {name: "Chef's Special - Dessert Plate", category: "dessert", price: 75, destination: restaurant}
]

MenuItem.create!(desserts)

#-------------------------------------------------------------------------------
restaurant = Destination.find_by_name("Neighborhood")

appetizers = [
  {name: "Pork Beet Terrine", category: "appetizer", price: 85, destination: restaurant},
  {name: "Cod Ceviche", category: "appetizer", price: 85, destination: restaurant},
  {name: "Mary's Oyster", category: "appetizer", price: 85, destination: restaurant}
]

MenuItem.create!(appetizers)

main_course = [
  {name: "Pizza", category: "main_course", price: 145, destination: restaurant},
  {name: "Salad", category: "main_course", price: 125, destination: restaurant}
]

MenuItem.create!(main_course)

desserts = [
  {name: "Deconstructed Risalamande", category: "dessert", price: 85, destination: restaurant},
  {name: "Carrot Cake", category: "dessert", price: 85, destination: restaurant},
  {name: "Grandma's Favorite", category: "dessert", price: 85, destination: restaurant}
]

MenuItem.create!(desserts)



p "done"
