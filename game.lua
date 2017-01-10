print("Welcome to the game.")
inv = {rags}
while input ~= "start" do
	print("type start to continue")
	input = io.read()
	if input == "start" then
		print("you begin your adventure in the forest")
	end
end

--start game
while input ~= "yes" do
	print("type inspect to get a description of the environment")
	input = io.read()
	if input == "inspect" then
		print("you are in a forest, there is a path you can follow. Do you want to move forward?")
	elseif input == "yes" then
		print("you follow the path")
	end
end
-- path
while not (input == "right" or input == "left") do
	print("type inspect to get a description of the environment")
	input = io.read()
	if input == "inspect" then
		print("there is a crossroads. Do you want to go to the right, or the left?")
	elseif input == "right" then
		print("you follow the right path")
	elseif input == "left" then
		print("you follow the left path")
	end
end

-- right path
if input == "right" then
	while not (input == "attack" or input == "run") do
		print("you walk along the right path.")
		print("you see a giant monster, do you attack or run?")
		input = io.read()
		if input == "attack" then
			print("you notice you have no weapon and run to a cave nearby.")     
		elseif input == "run" then
			print("you successfully run and hide in a cave")
      table.insert(inv, sword)
		end
	end
end
-- left path