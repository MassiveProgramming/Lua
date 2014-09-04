--functions
function itemspassed()
	x = 0
	while true do
		os.pullEvent("redstone")
		if rs.getInput("left") == true then
			return x
		else
			while rs.getInput("back") == true do
				os.pullEvent("redstone")
				if rs.getInput("left") == true then
					x = x + 1
					return x
				else if rs.getInput("back") == false then
					x = x + 1
					break
				end
				end
			end
		end
	end
end

--Main
local modem = peripheral.wrap("right")
modem.open(20)
while true do
	items = itemspassed()
	print("Items: ", items)
	modem.transmit(20,1,items)
	while rs.getInput("left")
		sleep(0.1)
	end
end
