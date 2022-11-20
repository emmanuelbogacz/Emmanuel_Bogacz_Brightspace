program hanoi
! rods are from left to right: A,B,C
! we start from rod A. the target rod is C.
! we start we the smallest disk 1 and th largest disk is n.

integer(4)::n
character::A,B,C

write(6,*)"Please input the number of disks (integer): "
read(5,*)n

call hanoi_move(n,'A','C','B')

end program hanoi


recursive subroutine hanoi_move(n,from,destination,intermediary)
    integer(4),intent(in)::n
    character,intent(in)::from,destination,intermediary
    
    if(n>0)then
        !moves n-1 disks from A to C, using C as an intermediary.
        call hanoi_move(n-1,from,intermediary,destination)
        
        write(6,*)"move disk ",n," from ", from," to ",destination
        !moving n-1 disks from B to C, using A as intermediary.
        
        call hanoi_move(n-1,intermediary,destination,from)
    end if
end subroutine hanoi_move
