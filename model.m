function [ num den ] = model( h2, A1, A2, R1, R2 )
%computation of numerator and denumerator of model based on input parameter

    h1 = (R2^2 / R1^2) * h2 + h2;
    F = R1 * sqrt(h1 - h2);
    
    A = [...
    (-R1 / (2 * A1 * sqrt(h1 - h2))), (R1 / (2 * A1 * sqrt(h1 - h2)))
    (R1 / (2 * A2 * sqrt(h1 - h2))), (-R1 / (2 * A2 * sqrt(h1 - h2)) - R2 / (2 * A2 * sqrt(h2)))];
    B = [ (1 / A1); 0];
    C= [0 1];
    D = 0;
    [num den] = ss2tf(A, B, C, D);
    num = num(end);
   
    
end

