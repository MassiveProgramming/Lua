print("Please enter a distance: ")
distance = io.read()
for x = 0, distance, 1 do
	while turtle.detect() == true then
		turtle.dig()
	end
	while turtle.forward() == false then
		turtle.attack()
	end
end
