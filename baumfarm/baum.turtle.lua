while not rs.setInput("back", true)
	sleep(0.5)
end
	
	turtle.place()
	sleep(3)
	turtle.dig()
	turtle.forward()
	
while turtle.detectUp() do
	turtle.digUp()
	turtle.up()
end

while not turtle.detectDown() do
	turtle.down()
end

	turtle.back()

shell.run("reboot")

