function A = toeplitz(m,n,a)
%Function to create a Toeplitz matrix (each descending diagonal is constant) using m: rows of desired matrix,
%n:columns of desired matrix, a:vector with m+n-1 entries 
    A = zeros(m,n);
    for i=1:m
        for j=1:n
            A(i,j) = a(n+i-j);
        end
    end
   A;
end
