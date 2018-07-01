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
