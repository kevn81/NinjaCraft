--Declare Variables
 args = {...};

 --_side = args[1];
 _length = tonumber(args[1]);
 _width = tonumber(args[2]);
 _height = tonumber(args[3]);

 _rOff = 0;
 _uOff = 0;

 _isDone = false;
--End Variables

 function SmartDig(l, w, h)
	while not _isDone do
		if turtle.getFuelLevel()<1 then
			print("Needs Fuel!");
			turtle.refuel();
		else
			for c=1, h do
			
				for a=1, l do
					--Move Forward
					print("Length: "..a);
					if turtle.detect() then
						turtle.dig();
						turtle.forward();
					else
						turtle.forward();
					end
					
					turtle.turnRight();
					for b=1, w do
						--Move Sideways
						print("Width: "..b);
						if turtle.detect() then
							turtle.dig();
							turtle.forward();
						else
							turtle.forward();
						end
				
						_rOff=_rOff+1;
					end
				
					for r=1, _rOff do
						turtle.back()
						_rOff=_rOff-1;
					end
					turtle.turnLeft();
					
				--repeat 
				
					_isDone = true;
				end
			
					_uOff=_uOff+1;
					
					--Move Up
					print("Height: "..h);
					if turtle.detectUp() then
						turtle.digUp();
						turtle.up();
					else
						turtle.up();
					end
				end
				--until _uOff == _height
					
				for u=0, _uOff do
					turtle.down()
					_uOff=_uOff-1;
				end
			 
		end	
	end
end


--Main
SmartDig(_length, _width, _height);
--End Main