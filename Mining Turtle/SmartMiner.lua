--Declare Variables
 args = {...};

 --_side = args[1];
 _length = tonumber(args[1]);
 _width = tonumber(args[2]);
 _height = tonumber(args[3]);

 _fOff = 0;
 _rOff = 0;
 _uOff = 0;

 _isDone = false;
--End Variables

 function SmartDig(l, w, h)
	while not _isDone do
		if turtle.getFuelLevel(1)<1 then
			print("Needs Fuel!");
			turtle.refuel();
		else
		
		for a=0, l do
					--Move Forward
					print("Length: "..a);
					if turtle.detect() then
						turtle.dig();
						turtle.forward();
					else
						turtle.forward();
					end
					_fOff = _fOff+1;
					
					turtle.turnRight();
					for b=0, w do
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
				for c=0, h do
			
				
			
					_uOff=_uOff+1;
					
					--Move Up
					print("Height: "..h);
					if turtle.detectUp() then
						turtle.digUp();
						turtle.up();
					else
						turtle.up();
					end
					
					turtle.turnRight();
					for b=0, w do
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
				
					for r=0, _rOff do
						turtle.back()
						_rOff=_rOff-1;
					end
					turtle.turnLeft();
				end
				
				for u=0, _uOff do
					turtle.down()
					_uOff=_uOff-1;
				end
				
					_isDone = true;
				end
			
				--until _uOff == _height
				for f=0, _fOff do
					turtle.back()
					_fOff=_fOff-1;
				end
			 
		end	
	end
end


--Main
SmartDig(_length, _width, _height);
--End Main