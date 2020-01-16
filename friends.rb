def get_name(person)
  return person[:name]
end


def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack)
  if person[:favourites][:snacks].include?(snack)
    return true
  else
    return false
  end
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, delete_friend)
  person[:friends].delete(delete_friend)
end

def total_money(people)
  money = 0
  for person in people
    money += person[:monies]

end
return money
end


def lending_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end


def favourite_food(people)
  foods = []
  for person in people
    foods +=  person[:favourites][:snacks]
  end
  return foods
end
