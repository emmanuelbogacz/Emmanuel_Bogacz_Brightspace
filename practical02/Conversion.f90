program conversion
! Declare variables 
   integer (kind=4) :: i,inum,tmp,numdigits
   integer :: binnum(60)
   real(kind=4) :: fnum

! Intialise 4-byte integer
   inum = 33554431
! Convert to 4-byte float
   fnum = real(inum)       

! Binary converter using modulus   
   i=1
   tmp=inum
   do while (tmp > 0)
      if(mod(tmp,2)==0) then
        binnum(i) = 0
        else
             binnum(i) = 1
      end if
      tmp = tmp/2
      i = i+1
   end do

   i=0
   numdigits = nint(fnum)
   do while (numdigits>0)
      numdigits=numdigits/10
      i=i+1
   end do
   numdigits=i

   write(6,'(a,i0,a,f0.1,a,b0,/,a,i1)')  'inum=',inum,', fnum=',fnum,', inum in binary=',inum,'numdigits=',numdigits


end program conversion
