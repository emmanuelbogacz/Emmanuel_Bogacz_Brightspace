program atanhh
    real(4)::start,ending,sampling
    integer(4)::size_y,i
    real(8)::delta
    real(8),allocatable:: y1(:),y2(:), x(:)
   !arrays for the atanh values and x values with allocatable size
   
    start=-0.9
    ending=0.9
    sampling=0.01
    
    size_y=int( ((-start+ending)/sampling) +1 )
    !number of values in the interval [0.9,0.9], sampled every 0.01
    !+1 as we go through 0
    
    allocate(y1(size_y))
    allocate(y2(size_y))
    allocate(x(size_y))
    
    write(6,*) "Please input a small positive real number: "
    read(5,*) delta

    do i=1,size_y,1
        x(i)=start+i*sampling
        call atanh1(x(i), delta, y1(i)) ! mc laurin series
        call atanh2(x(i),y2(i)) !log expression
        
        write(6,'(a,f14.9,a,e18.9e2)') 'x=', x(i), ' |atanh1-atanh2|=',abs(y1(i)-y2(i)) 
    end do
end program atanhh


subroutine atanh1(x, del,term)
    integer(4)::n
    real(8),intent(in)::x,del
    real(8),intent(out)::term
    real(8)::new_term
    
    n=0
    term=0 ! each term of the mclaurin series
    !new_term: new iterated term, added if less than delta
    
    do while(1<2)
        new_term=(x**(2*n+1))/(2*n+1)
        if( abs(new_term)< del ) then
            exit
        end if
    
    term=term+new_term
    n=n+1
    end do 

end subroutine 


subroutine atanh2(x,y)

    real(8), intent(out):: y
    real(8), intent(in):: x

    y=0.5*( log(1+x) - log (1-x) )
end subroutine 
