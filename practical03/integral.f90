program integral

    !integer (kind=4) :: N,i
    integer (4) :: N,i
    real(4):: summ, b,a


    real(8),  parameter :: PI  = 4 * atan (1.0_8)

    a=0
    b=PI/3

    summ=0
    N=12

    summ=tan(a)+tan(b)

    do i=2,N-1,1
        summ = summ + 2*tan(a+ i*(b-a)/N)
    end do

    summ=(b-a)*summ/(2*N)

    diff= abs(log(2.) - summ)

    write(6,'(a,f10.8,/,a,f10.8,/,a,f10.8)') 'calculated integral = ',summ,'exact solution = ', log(2.), 'difference = ',diff

end program integral
