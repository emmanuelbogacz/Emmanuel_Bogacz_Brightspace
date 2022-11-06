! Iterative version
!
program gcditer
 
integer(4)::a,b,ierr,original_a
 
write(6,*) "Please input two integers, separated by a space: "
read(5,*,iostat=ierr) a,b
original_a=a ! initial value of a

call gcd(a,b) ! a is updated to be the gcd of a and b
write(6,"(a,i0,a,i0,a,i0)") "The GCD of ",original_a," and ",b," is ",a

end program gcditer

subroutine gcd(a,b_in)
    integer(4), intent(inout)::a
    integer(4), intent(in)::b_in
    integer(4)::temp,b
    b=b_in ! can't change value of an intent(in)
    do while(b .ne. 0)
        temp=b
        b=mod(a,b)
        a=temp
    end do
end subroutine
