program ex9
use msquare

integer(4), allocatable:: a(:,:) !matrix
integer(4):: n ! n = size of matrix
logical:: magic

!time complexity
integer (kind=4) :: cnt1,cnt2,rcnt,maxcnt
call system_clock(cnt1,rcnt,maxcnt)

n=5
allocate(a(n,n))

open(1,file='matrix3.dat',status='old',form='formatted')
read(1,*) a !reads the matrix in the file, call it "A"

magic=isMagicSquare(a,n)
write(6,*) magic ! Outputs T is A is magic, F otherwise

close(1)

open(2,file='time_taken.dat', status='unknown', form='formatted')

call system_clock(cnt2,rcnt,maxcnt) ! know how long it is running for
write(6,*) ' Time taken ',cnt2-cnt1
write(2,*) ' Time taken ',cnt2-cnt1 ! writes to file

close(2)

end program ex9

!The time complexity is Big Theta of n
!The following is a table:
!
!Matrix of size             time taken
!300                        0 or 1
!30                         0
!



