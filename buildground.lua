x = 24
z = 24
slot = 1

--Funtcitons
function nextSlot()
	if turtle.getItemCount(slot) == 0 then
		slot = slot + 1
		turtle.select(slot)
	end
end

turtle.select(1)

for ax = 1, x, 1 do
	for az = 2, x, 1 do
		turtle.placeDown()
		nextSlot()
		turtle.forward()
	end
	
	if ax % 2 == 1 then
		turtle.turnLeft()
		turtle.placeDown()
		nextSlot()
		turtle.forward()
		turtle.turnLeft()
	else
		turtle.turnRight()
		turtle.placeDown()
		nextSlot()
		turtle.forward()
		turtle.turnRight()
	end
end

if x % 2 == 0 then
	turtle.turnRight()
	turtle.forward()
	turtle.forward()
	turtle.turnLeft()
	turtle.forward()
else
	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()
	turtle.forward()
end
