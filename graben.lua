print("----Graben----#Made by Badeschlappen#----")
print("")
print("Wie weir soll gegraben werden") 
a = io.read()
print("Eingabe bestätigen")
b = io.read()

a = a + 0
b = b + 0

while a > 0 do
	while turtle.detect() do
		turtle.dig()
		sleep(0,6)
	end
	turtle.forward()
	a = (a - 1)
end

while turtle.detectUp() do
	turtle.digUp()
	sleep(0,6)
end

turtle.turnLeft()
turtle.turnLeft()
turtle.up()

while b > 0 do
	while turtle.detect() do
		tuetle.dig()
		sleep(0,6)
	end
	turtle.forward()
	b = (b - 1)
end

turtle.turnLeft()

while turtle.detect() do
	turtle.dig()
	sleep(0,6)
end

turtle.forward()
turtle.turnLeft()
turtle.turnLeft()

if turtle.detectDown() then
	turtle.digDown()
end

turtle.down()