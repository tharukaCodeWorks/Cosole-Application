
      PROGRAM FIZZBUZZ
	  INTEGER i , x
	  DO i = 1 , 100
      IF(MOD(i,15) . EQ . 0) THEN
        WRITE(*,*) "FizzBuzz"
      ELSE IF(MOD(i,3) . EQ . 0) THEN
        WRITE(*,*) "Fizz"
      ELSE IF(MOD(i,5) . EQ . 0) THEN
        WRITE(*,*) "Buzz"
      ELSE
        WRITE(*,*) i
      ENDIF
    END DO

	  DO i = 1 , 100
      WRITE(*,*) "Enter a Number and Press Enter!"
      read(*,*),x
      IF(MOD(x,15) . EQ . 0) THEN
        WRITE(*,*) "FizzBuzz"
      ELSE IF(MOD(x,3) . EQ . 0) THEN
        WRITE(*,*) "Fizz"
      ELSE IF(MOD(x,5) . EQ . 0) THEN
        WRITE(*,*) "Buzz"
      ELSE
        WRITE(*,*) i
      ENDIF
    END DO
      END
