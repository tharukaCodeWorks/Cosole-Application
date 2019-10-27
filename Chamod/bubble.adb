with Ada.Text_IO;
use Ada.Text_IO;

procedure Bubble is
    type MY_ARRAY is array(1..9) of Integer;
    Data : MY_ARRAY;

begin
    Put_Line("Please input the series of numbers");

    for I in 1..MY_ARRAY'Length loop
        Data(I) := Integer'Value(Get_Line);
    end loop;
end Main;
