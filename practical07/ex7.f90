program ex7
    integer(16)::n,i  !n is the polynomial order
    real(16), allocatable::f_term(:) ! function f up to the n^th term
    real(16)::x
    x=1.
    
    write(6,*) "Please input an integer: "
    read(5,*) n
    
    allocate(f_term(n))

    do i=1,n,1
        call compute_nth_term(i,f_term(i),x)

        write(6,'(a, i0,a)')"Difference between exp(1) and the Taylor series at order ", i,':'
        write(6,*) abs(exp(x) - f_term(i))
        write(6,*)'where f(x)= ', f_term(i)
        write(6,'(a)') '--------------------------------------'
    end do
end program ex7

! to compute the factorial of n
subroutine factorial(n,fact)
    integer(16), intent(in)::n
    integer(16), intent(out)::fact
    integer(16)::i
    
    fact=1      ! this is 0!
    
    do i=1,n,1
        fact=fact*i
    end do
end subroutine

!computes the nth term of the taylor series of f(x)
subroutine compute_nth_term(n,f,x)
    integer(16), intent(in)::n
    real(16), intent(in)::x
    real(16), intent(out)::f
    integer(16)::fact,i
    
    f=1 !initial value at n=0

    do i=1,n,1
        call factorial(i,fact)
        f=f+(x**(i))/fact       !taylor series
    end do
end subroutine

!
!   Comments: f blows up to infinity at n=130 for a 16 bytes precision
!   This is due to a lack of machine precision
!

