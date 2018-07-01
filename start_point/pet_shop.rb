def pet_shop_name(pet_shop)
  name = pet_shop[:name]
  return name
end

def total_cash(pet_shop)
  total_cash = pet_shop[:admin][:total_cash]
  return total_cash
end

def add_or_remove_cash(pet_shop,add_amount)
  total_cash = total_cash(pet_shop)
  total_cash = total_cash + add_amount
  return pet_shop[:admin][:total_cash] = total_cash
end

def pets_sold(pet_shop)
  pet_sold = pet_shop[:admin][:pets_sold]
  return pet_sold
end


def increase_pets_sold(pet_shop, add_amount)
  pet_sold = pet_shop[:admin][:pets_sold]
  pet_sold += add_amount
  return pet_shop[:admin][:pets_sold] = pet_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  breed_count_new_array = []
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:breed] == breed
      breed_count_new_array.push(breed)
    end
  end
  return breed_count_new_array
end

def find_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
    dog_name = pet[:name]
    if dog_name == name
      return pet
    else
      return nil
    end
  end
end

def remove_pet_by_name(pet_shop, name)
  find_pet_by_name(pet_shop, name)
  pet = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(pet)
end

# def remove_pet_by_name(pet_shop, name)
#   pets = pet_shop[:pets]
#   for pet in pets
#     dog_name = pet[:name]
#     if dog_name == name
#       pets.delete(name)
#     end
#   end
# end

def add_pet_by_name(pet_shop, new_pet)
    pet_shop[:pets].push(new_pet)
end

# def add_pet_by_name(pet_shop, new_pet)
#     pet_shop[:pets] << (new_pet)
# end
