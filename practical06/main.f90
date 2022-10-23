module const
    integer(4), parameter:: n=5
    integer(4), parameter:: p=3
    integer(4), parameter:: q=4
end module const

program matrixmult

    use const
    integer(4)::i,j
    real(4)::c(n,q), b(p,q), a(n,p)

    do i=1,n,1      ! initialise C
        do j=1,q,1
            c(i,j)=0
        end do
    end do 

    write(6,"(a)") "Matrix A: "
    do i=1,n,1      ! initialise A
        do j=1,p,1
            a(i,j)=i+j
            write(6,"(f5.1,a)",advance='no') a(i,j)," "
        end do
        write(6,"(/)") ! this is used to have a matrix form in the output
    end do 

    write(6,"(a)") "Matrix B: "
    do i=1,p,1      ! initialise B
        do j=1,q,1
            b(i,j)=i-j
            write(6,"(f5.1,a)",advance='no') b(i,j)," "
        end do
        write(6,"(/)")
    end do 

    call matmult(c,b,a)

end program matrixmult
