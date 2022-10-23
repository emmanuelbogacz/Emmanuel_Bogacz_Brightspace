!
!       This is the standalone (one file) code for practical 06
!
program ex6

integer(4)::n,p,q,i,j
real(4),allocatable::a(:,:),b(:,:),c(:,:)

n=5
p=3
q=4

allocate(a(n,p))
allocate(b(p,q))
allocate(c(n,q))

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

!compute C
write(6,"(a)") "Matrix C: "
do i=1,n,1      
    do j=1,q,1
        c(i,j)=sum(a(i,:)*b(:,j)) !matrix multiplication expression
        write(6,"(f5.1,a)",advance='no') c(i,j)," "
    end do
    write(6,"(/)")
end do 

    
end program ex6
