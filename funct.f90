MODULE funct
!Provides an explicit interface for user-defined
!functions and subroutines
!J. Knight June 2003
  IMPLICIT NONE

  CONTAINS

  SUBROUTINE ff(A,X)
  !_______________________________________________________
  ! Cost Function - Insert your own cost function here -
  ! This cost function is equation (1.1)
  ! of Haupt and Haupt, 2003
  !
  !Input values are an array, output value is a vector
  !containing the values of A evaluated using a cost
  !function.
  !Calculates the standard deviation of a 1-d array.
  !J. Knight
  IMPLICIT NONE
  REAL,INTENT(IN),DIMENSION(:,:)::A ! Input array (2-d)
  REAL,INTENT(OUT),DIMENSION(:)::X  ! Output vector (1-d)
  ! Example 4:
  !X=A(:,1)*SIN(4.*A(:,1))+1.1*A(:,2)*SIN(2.*A(:,2))
  ! Example 12:
  X=0.5+(sin(sqrt(A(:,1)**2+A(:,2)**2)**2)-.5)/(1.+0.1*(A(:,1)**2+A(:,2)**2))
  END SUBROUTINE ff

END MODULE funct
