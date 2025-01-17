module msquare

  contains
! Checks if a matrix is a magic square.
! A magic square is an n-sided matrix whose sum of values for each
! row, column, main and secondary diagonals equals to n(n^2 + 1)/2.
! The function takes as input a matrix 'square' and its side length 'n'
! and outputs 0 if 'n' is negative or 'square' is NOT a magic square;
! otherwise, outputs a non-zero value
    function isMagicSquare(square,n)
        logical :: isMagicSquare
        integer (kind=4) :: n
        integer (kind=4) :: square(n,n)
        integer (kind=4) :: M, i, j, rowSum(n), colSum(n), diagSum, secDiagSum

        isMagicSquare = .TRUE.
! Eliminate the case where 'n' is negative
        if (n .lt. 0) isMagicSquare = .FALSE.

! M is the sum of every row, column,
! and the main and secondary diagonals
        if (isMagicSquare) then
          M = (n * (n*n + 1))/2

! Checking that every row and column add up to M
          rowSum = sum(square,dim=2)
          colSum = sum(square,dim=1)
          if (any(rowSum.ne.M) .or. any(colSum.ne.M)) isMagicSquare = .FALSE.
        endif
! Checking that the main and secondary
! diagonals each add up to M
        if (isMagicSquare) then
          diagSum = 0; secDiagSum = 0;
          do i = 1,n
            diagSum = diagSum + square(i,i);
            secDiagSum = secDiagSum + square(i,n-i+1);
          end do
          if (diagSum.ne.M .or. secDiagSum.ne.M) isMagicSquare = .FALSE.
        endif

! If passed all checks, it is a magic square, then isMagicSquare = .TRUE.
        return
    end function isMagicSquare
end module

