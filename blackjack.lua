print("Blackjack table")
math.randomseed(os.time())
math.random(); math.random(); math.random()
card1 = math.random(1, 10)
card2 = math.random(1,10)
card3 = math.random(1,10)
card4 = math.random(1,10)
dealer1 = math.random(1, 10)
dealer2 = math.random(1, 10)
dealer3 = math.random(1, 10)
you = {card1, card2}
dealer = {dealer1, dealer2}
countd = 2
county = 2
-- dealer
if (dealer1 + dealer2) <= 19 then
  table.insert(dealer, dealer3)
  countd = 3
elseif (dealer1 + dealer2) > 21 then
  print("dealer bust, you win")
  return
end
if countd == 3 and dealer1+dealer2+dealer3 > 21 then
  print("dealer bust")
  return
end
--you
while not (input == "hit" or input == "stand") do
  print("your cards:")
	for i, v in pairs(you) do
    print(v)
  end
print("do you want to hit, or stand")
input = io.read()
  if input == "hit" then
    print("you hit")
    table.insert(you, card3)
    county = 3
    for i, v in pairs(you) do
      print(v)
    end
  elseif input == "stand" and countd == 2 and card1+card2 > dealer1+dealer2 then
    print("You win!")
    return
  elseif input == "stand" and countd == 3 and card1+card2 > dealer1+dealer2+dealer3 then
    print("You win!")
    return
  end
end
while input == "hit" do
  if card1+card2+card3 > 21 then
    print("you bust")
    return
  end
  print("do you want to hit again? yes or no")
  input = io.read()
  if input == "yes" and card1+card2+card3+card4 < 21 then
    table.insert(you, card4)
    county = 4
    for i, v in pairs(you) do
      print(v)
    end
  elseif input == "yes" and card1+card2+card3+card4 > 21 then
    print("You bust!")
    return
  end
end
--win conditions
if county == 2 and countd == 2 and card1+card2 < dealer1+dealer2 then
  print("Dealer wins")
  return
elseif county == 3 and countd == 2 and card1+card2+card3 < dealer1+dealer2 then
  print("Dealer wins")
  return
elseif county == 3 and countd == 3 and card1+card2+card3 < dealer1+dealer2+dealer3 then
  print("Dealer wins")
  return
elseif county == 4 and countd == 2 and card1+card2+card3+card4 < dealer1+dealer2 then
  print("Dealer wins")
  return
elseif county == 4 and countd == 3 and card1+card2+card3+card4 < dealer1+dealer2+dealer3  then
  print("Dealer wins")
  return
elseif county == 2 and countd == 3 and card1+card2 < dealer1+dealer2+dealer3 then
  print("Dealer wins")
  return
elseif county == 2 and countd == 4 and card1+card2 < dealer1+dealer2+dealer3+dealer4 then
  print("Dealer wins")
  return
else print("You win!") return
end