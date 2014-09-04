x = 1
y = 0

--Functions
funtion digplacedown()
	turtle.digDown()
	turtle.placeDown()
end

turtle.select(1)
while true do
	if y == 9 then
		x = x + 1
		if x == 16 then
			print("Inventory full")
			while ture do
				sleep(1)
			end
		end
		turtle.select(x)
		y = 0
	end
	digplacedown()
	turtle.forward()
	digplacedown()
	turtle.forward()
	digplacedown()
	turtle.turnRight()
	turtle.forward()
	digplacedown()
	turtle.forward()
	digplacedown()
	turtle.turnRight()
	turtle.forward()
	digplacedown()
	turtle.forward()
	digplacedown()
	turtle.turnRight()
	turtle.forward()
	digplacedown()
	turtle.forward()
	turtle.turnRight()
	sleep(75)
	y = y + 1
end
