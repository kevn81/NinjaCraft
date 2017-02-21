--Declare Variables
args = {...};

_row = args[1];
_col = args[2];
_up = args[3];

_x = 0;
_y = 0;
_z = 0;
--End Variables

--Main

SmartDig(_row, _col, _up)

--End Main

--Dig and Detect
function SmartDig(row, col, up)
	print(row,col,up);
	for(r=0; r<row; r++)
		print r;
	end
end
