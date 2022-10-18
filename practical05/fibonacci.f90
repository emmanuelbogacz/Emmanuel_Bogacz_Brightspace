module global
    integer(16)::a,b,temp
    
end module global

program fibonacci
use global

    integer(4):: n,i
    a=0
    b=1
        
    write(6,*) "Please input an integer: "
    read(5,*) n

    do i=3,n,1  
        call update_a_b
        write(6,*) b
    end do

end program fibonacci

subroutine update_a_b
use global
    temp=a
    a=a+b !this is the updated F_n
    b=temp !this is the updated F_n-1

end subroutine
