with Ada.Text_IO; use Ada.Text_IO;

procedure Bubble is
    type MY_ARRAY is array(1..10) of Integer;
    Data : MY_ARRAY;
begin
    Put_Line("Please input the series 10 of numbers");

    for I in 1..MY_ARRAY'Length loop
        Put("Number: ");
        Data(I) := Integer'Value(Get_Line);
    end loop;

    for I in reverse MY_ARRAY'Range loop
        Put("Number: ");
    end loop;

end Bubble;
