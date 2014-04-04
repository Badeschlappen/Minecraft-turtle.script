	

    --Strip mining turtle program with enderchest.
    --Badeschlappen
     
    function checkFuel()
      while turtle.getFuelLevel() <= 50 do
        turtle.select(15)
        turtle.refuel(1)
        turtle.select(1)
      end
    end
     
    function forward()
      while turtle.detect() do
        turtle.dig()
        sleep(0.5)
      end
      while turtle.detectUp() do
        turtle.digUp()
        sleep(0.5)
      end
      if turtle.detectDown() then
        turtle.forward()
      else
        turtle.select(1)
        turtle.placeDown()
        turtle.forward()
      end
    end
     
    function turnAround()
      turtle.turnRight()
      turtle.turnRight()
    end
     
    function back()
      while turtle.detectUp() do
        turtle.digUp()
        sleep(0.5)
      end
      turtle.up()
      turnAround()
      while tunnellength > 0 do
        while turtle.detect() do
          turtle.dig()
          sleep(1)
        end
        turtle.forward()
        tunnellength = tunnellength - 1
      end
      turtle.digDown()
      turtle.down()
    end
     
    function chest()
      turtle.select(14)
      while turtle.detect() do
        turtle.dig()
        sleep(0.5)
      end
      turtle.dig()
      turtle.place()
      turtle.select(2)
      turtle.drop()
      turtle.select(3)
      turtle.drop()
      turtle.select(4)
      turtle.drop()
      turtle.select(5)
      turtle.drop()
      turtle.select(6)
      turtle.drop()
      turtle.select(7)
      turtle.drop()
      turtle.select(8)
      turtle.drop()
      turtle.select(9)
      turtle.drop()
      turtle.select(10)
      turtle.drop()
      turtle.select(11)
      turtle.drop()
      turtle.select(12)
      turtle.drop()
      turtle.select(13)
      turtle.drop()
      turtle.select(14)
      turtle.dig()
      turtle.select(1)
    end
     
    --Main script
    print("pflasterstein in slot 1, enderchest in slot 14, kohle in slot 15, fackeln in slot 16.")
    print("Input total mines:")
    abzweigungen = io.read()
    abzweigungen = abzweigungen +0
    z = 0
    tunnellength = abzweigungen*3
     
    print("mines : ")
    print("0")
    while abzweigungen > 0 do
      x = 0
      y = 0
      checkFuel()
      forward()
      turnAround()
      chest()
      turnAround()
      forward()
      turtle.turnLeft()
      forward()
      forward()
      forward()
      forward()
      forward()
      forward()
      while turtle.detectUp() do
        turtle.digUp()
        sleep(0.5)
      end
      turnAround()
      while x < 12 do
        forward()
        x= x + 1
        sleep(0.1)
      end
      while turtle.detectUp() do
        turtle.digUp()
        sleep(0.1)
      end
      turnAround()
      while y < 6 do
        forward()
        y = y + 1
        sleep(0.1)
      end
      while turtle.detectUp() do
        turtle.digUp()
        sleep(0.5)
      end
      turtle.turnRight()
      while turtle.detect() do
        turtle.dig()
        sleep(0.5)
      end
      turtle.forward()
      turnAround()
      turtle.select(16)
      while turtle.detect() do
        turtle.dig()
        sleep(0.5)
      end  
      turtle.place()
      turnAround()
     
      z = z + 1
      print(z)
      abzweigungen = abzweigungen - 1
    end
    print("zurueck")
    back()
    print("Fertig")
    print("du kannst das naechste programm starten.")

