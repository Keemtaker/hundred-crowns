
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
