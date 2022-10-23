subroutine matmult(c,b,a)
    use const
    
    real(4),intent(inout)::c(n,q)
    real(4), intent(in):: b(p,q), a(n,p)

    !compute C
    write(6,"(a)") "Matrix C: "
    do i=1,n,1      
        do j=1,q,1
            c(i,j)=sum(a(i,:)*b(:,j)) !matrix multiplication expression
            write(6,"(f5.1,a)",advance='no') c(i,j)," "
        end do
        write(6,"(/)")
    end do 

end subroutine 
