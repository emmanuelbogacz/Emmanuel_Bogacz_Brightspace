! Recursive version
!
program gcd_recur

integer(4)::a,b,gcd
 
write(6,*) "Please input two integers, separated by a space: "
read(5,*) a,b

write(6,"(a,i0,a,i0,a,i0)") "The GCD of ",a," and ",b," is ", gcd(a,b)

end program gcd_recur

recursive function gcd(a,b) result(ans)
    integer(4)::a,b,ans
        if(b==0) then
            ans=a
        else
            ans=gcd(b,mod(a,b))
        end if
    return
end function    
