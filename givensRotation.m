function G = givensRotation(n, i, j, theta )
% Simple program used to generate a matrix to rotate in the x_i,x_j plane at angle theta
    if(j > n || i>= n || i>= j || i<1)
       disp('Conditions do not hold: cannot generate Givens rotation matrix')
       G = [];
       return;
    end
    A = eye(n);
    c= cos(theta);
    s = sin(theta);
    A(i,i) = c;
    A(j,j) = c;
    A(i,j) = -s;
    A(j,i) = s;
    G = A;         
end
