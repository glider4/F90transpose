! Using matrix mat.txt 3x2 matrix setup
! Prints out original matrix from text file, and transposed matrix.

! To run this program: use terminal:
!	 $ gfortran transpose_matrix.f90
!	 $ ./a.out


program matrix
	implicit none
	integer,dimension(3,2):: A  ! inputted matrix
	integer,dimension(2,3):: B  ! outputted (transposed) matrix
	INTEGER::i,j
	
	open(20,file='mat.txt')

	do i=1,3
		read(20,*,END=111) (A(i,j), j=1,2)
	enddo
	write(*,*)

! print out matrix and message

	111 print*, 'Reading complete, matrix below:'
	write(*,*) ! add space before matrix

	do i=1,3
		write(*,*) (A(i,j), j=1,2)
	enddo


! transpose setup and print

	write(*,*)
	write(*,*) 'Transposed matrix:'

	do i=1,2
		write(*,*) (A(j,i), j=1,3)
		write(8,*) (A(j,i), j=1,3)
	enddo
	write(*,*)



end program matrix

