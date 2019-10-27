
      PROGRAM FIZZBUZZ_PROGRAM
	  INTEGER index , x
	  DO index = 1 , 100
	  IF(MOD(index,15) . EQ . 0) THEN
		  WRITE(*,*) "FizzBuzz"
	  ELSE IF(MOD(i,3) . EQ . 0) THEN
		  WRITE(*,*) "Fizz"
	  ELSE IF(MOD(index,5) . EQ . 0) THEN
		  WRITE(*,*) "Buzz"
	  ELSE
	    WRITE(*,*) index
	  ENDIF
      ENDDO
      WRITE(*,*) "Not: Note: If you want to stop please press CTRL + Z"
	  DO index = 1 , 100
	    WRITE(*,*) "Enter a number for test: "
	  read(*,*),x
	  IF(MOD(x,15) . EQ . 0) THEN
		  WRITE(*,*) "FizzBuzz"
	  ELSE IF(MOD(x,3) . EQ . 0) THEN
		  WRITE(*,*) "Fizz"
	  ELSE IF(MOD(x,5) . EQ . 0) THEN
		  WRITE(*,*) "Buzz"
	  ELSE
	    WRITE(*,*) x
	  ENDIF
      ENDDO
      END
