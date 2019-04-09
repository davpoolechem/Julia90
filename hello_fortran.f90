integer function hello_fortran()

!*****************************************************************************80
!
!! MAIN is the main program for HELLO.
!
!  Discussion:
!
!    HELLO is a simple FORTRAN90 program that says "Hello, world!".
!
!  Licensing:
!
!    This code is distributed under the GNU LGPL license.
!
!  Modified:
!
!    18 May 2009
!
!  Author:
!
!    John Burkardt
!
  implicit none

  write ( *, '(a)' ) 'Hello from Fortran 90!'

  hello_fortran = 0
  return

end
