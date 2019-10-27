with Ada.Text_IO; use Ada.Text_IO;

procedure Bubble is
    Data : array(1..10) of Integer;
    Temp : Integer;
begin
    Put_Line("Please input the series 10 of numbers");

    for I in 1..Data'Length loop
        Put("Number: ");
        Data(I) := Integer'Value(Get_Line);
    end loop;

    for I in reverse Data'Range loop
        for J in Data'First .. I loop
          if Data(I) < Data(J) then
            Temp := Data(J);
            Data(J) := Data(I);
            Data(I) := Temp;
          end if;
        end loop;
    end loop;

    Put_Line("------ SORTED ARRAY ------");
    for I in 1..Data'Length loop
      Put(Integer'Image(Data(I)));
      New_Line(1);
    end loop;

end Bubble;
