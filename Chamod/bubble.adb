with Ada.Text_IO; use Ada.Text_IO;

procedure Bubble is
    type MY_ARRAY is array(1..10) of Integer;
    Data : MY_ARRAY;
    Temp : Integer;
begin
    Put_Line("Please input the series 10 of numbers");

    for I in 1..MY_ARRAY'Length loop
        Put("Number: ");
        Data(I) := Integer'Value(Get_Line);
    end loop;

    for I in reverse Data'Range loop
        for J in Data'First .. I loop
          Temp := Data(J);
          Data(J) := Data(I);
          Data(I) := Temp;
        end loop;
    end loop;

    Put_Line("------ SORTED ARRAY ------");
    for I in 1..Data'Length loop
      Put_Line(Integer'Data(I));
    end loop;

end Bubble;
