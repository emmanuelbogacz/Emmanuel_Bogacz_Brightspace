module global !global arrays x and y

integer(4),parameter:: N=1300
real(4)::integral
real(4):: x(N),y(N)

end module global


program ex4
use global

    integer(4)::i
    real(4)::diff
    
    do i=1,N,1
        x(i)=(60./(N-1))*(i-1) ! from 0 to 60 degrees
    end do

    do i=1,N,1
        call degtorad(x(i),x(i))
    end do

    do i=1,N,1
        y(i)=tan(x(i))
        !write(*,*) y(i)
    end do

    call trapint(N,integral)

    diff= abs(log(2.) - integral)

    write(6,'(a,f10.8,/,a,f10.8,/,a,f10.8)') 'calculated integral = ',integral,'exact solution = ', log(2.), 'difference = ',diff

    
end program ex4


subroutine degtorad(arg,arg2)
    real (kind=4), intent(in) :: arg
    real (kind=4), intent(out) :: arg2
    real (kind=4) :: pi=3.1415927
    arg2=(pi*arg)/180.0
end subroutine degtorad


subroutine trapint(npoints,summ)
    use global

    integer(4), intent(in):: npoints
    real(4), intent(out):: summ

    integer(4) :: i

    summ=0.
    summ = summ+y(1)+y(npoints)

    do i=1,npoints-1,1
            summ = summ + 2*y(i)
    end do

    summ=(x(N)-x(1))*summ/(2*npoints)

end subroutine trapint
