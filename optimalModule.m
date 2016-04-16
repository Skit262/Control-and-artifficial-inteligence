function [ reg ] = optimalModule( num, den, type )
%Synthesis PID via optimal module method
    
    if den(end) ~= 1
        
        num = num / den(end);
        den = den / den(end);
        
    end
    
    len = length(den);
    a = zeros(1, 6);
    a(1 : len) = den(1 : end);
    a(1 : len) = a(len :-1: 1);

    if type == 1
        
        A = [a(2) -1
         a(4) -a(3)];
        
        b = [ (1 / (2 * num)); ((-a(2)^2 + 2 * a(3)) / (2 * num))];
    
    end
     
    
    if type == 2
        
        A = [-a(3) a(2)
             -a(5) a(4)];
         
         b = [((-a(2)^2 + 2 * a(3)) / (2 * num)); ((a(3)^2 - 2 * a(2) * a(4) + 2 * a(5))  / (2 * num))];
    
    end
           
    if type == 3
    
     A = [a(2) -1 0
          a(4) -a(3) a(2)
          a(6) -a(5) a(4)];
      
     b = [(1 / (2 * num)); ((-a(2)^2 + 2 * a(3)) / (2 * num)); ((a(3)^2 - 2 * a(2) * a(4) + 2 * a(5))  / (2 * num))];
        
    end
    
    reg = A \ b;
  
end

