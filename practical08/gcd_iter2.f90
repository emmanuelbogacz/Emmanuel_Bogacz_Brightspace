!
! Same program as gcd_ter.f90 but using a function instead of a subroutine
!

program gcditer
 
integer(4)::a,b,gcd,ierr ! declare the type of the gcd function
 
write(6,*) "Please input two integers, separated by a space: "
 
read(5,*,iostat=ierr) a,b

write(6,"(a,i0,a,i0,a,i0)") "The GCD of ",a," and ",b," is ",gcd(a,b)

end program gcditer

function gcd(a_in,b_in)
    integer(4)::gcd ! type of the function
    integer(4),intent(in)::a_in,b_in
    integer(4)::temp,a,b
    b=b_in ! can't change value of an intent(in)
    a=a_in
    do while(b .ne. 0)
        temp=b
        b=mod(a,b)
        a=temp
    end do
    gcd=a
    return
end function
