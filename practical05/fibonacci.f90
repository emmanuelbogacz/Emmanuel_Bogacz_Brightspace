!
! Commented out is the old code (more basic)
!

! program fibonacci
! integer(4):: n,i,temp,a,b
!     
! write(6,*) "Please input an integer: "
! 
! read(5,"(i3)") n
!     
! a=0
! b=1
!     
! write(6,"(i11)") a
!     
! do i=3,n,1  
! temp=a
! a=a+b !this is the updated F_n
! b=temp !this is the updated F_n-1
!     
! write(6,"(i11)") a
! end do
! 
! end program fibonacci

module global
    integer(4)::a,b,temp
    
end module global

program fibonacci
use global

    integer(4):: n,i
        
    a=0
    b=1
        
    write(6,*) "Please input an integer: "

    read(5,"(i3)") n

    write(6,"(i11)") a
        
    do i=3,n,1  
        call update_a_b
        write(6,"(i11)") a
    end do

end program fibonacci

subroutine update_a_b
use global
    temp=a
    a=a+b !this is the updated F_n
    b=temp !this is the updated F_n-1

end subroutine
