with Ada.Text_IO; use Ada.Text_IO;

procedure Bubble is
    numArray : array(1..10) of Integer;
    Temp : Integer;
begin
    Put_Line("Please input the series 10 of numbers");

    for I in 1..numArray'Length loop
        Put("Number " & Integer'Image(I) & ": ");
        numArray(I) := Integer'Value(Get_Line);
    end loop;

    for I in reverse numArray'Range loop
        for J in numArray'First .. I loop
          if numArray(I) < numArray(J) then
            Temp := numArray(J);
            numArray(J) := numArray(I);
            numArray(I) := Temp;
          end if;
        end loop;
    end loop;

    Put_Line("------ Sorting Array ------");
    for I in 1..numArray'Length loop
      Put(Integer'Image(numArray(I)));
      New_Line(1);
    end loop;
    Put_Line("-------- Completed --------");

end Bubble;
