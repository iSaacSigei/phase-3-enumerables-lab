require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(spicy_foods)
  spicy_foods.map{|spicy| spicy[:name]}
end


def spiciest_foods(spicy_foods)
  spicy_foods.select{|spiciest| spiciest[:heat_level]>5}
end


def print_spicy_foods(spicy_foods)
  b="🌶"
  spiciest=spicy_foods.collect do |selected_food|
    puts "#{selected_food[:name]} (#{selected_food[:cuisine]}) | Heat Level: #{b*selected_food[:heat_level]}"
  end
end


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  s=spicy_foods.find do |selected_hash|
    selected_hash[:cuisine]==cuisine
  end
end


def sort_by_heat(spicy_foods)
  spicy_foods.sort_by{ |sort| sort[:heat_level]}
  
end


def print_spiciest_foods(spicy_foods)
  b="🌶"
  spicy_foods.select do |spiccy|
    if spiccy[:heat_level]>4
    puts "#{spiccy[:name]} (#{spiccy[:cuisine]}) | Heat Level: #{b*spiccy[:heat_level]}"
    end
  end
end


def average_heat_level(spicy_foods)
  spicy_foods.sum do |s|
    s[:heat_level]/spicy_foods.length
  end
end
