require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map do |foods| 
    foods[:name]
  end
end

def spiciest_foods(spicy_foods)
  spicy_list = []
  spicy_foods.filter do |foods|
    if foods[:heat_level] > 5
      spicy_list.push(foods)
    end
  end
  spicy_list
end

def print_spicy_foods(spicy_foods)
  spicy_foods.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶"*food[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.filter do |food|
    if food[:cuisine] == cuisine
      return food
    end
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  new_list = spiciest_foods(spicy_foods)
  print_spicy_foods(new_list)
end

def average_heat_level(spicy_foods)
  list_of_spicy = spicy_foods.map do |food|
    food[:heat_level]
  end
  list_of_spicy.sum/spicy_foods.length
end

average_heat_level(spicy_foods)