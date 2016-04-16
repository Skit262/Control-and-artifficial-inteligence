function [ reg ] = naslin( num, den, type )
%PID regulator synthesis via Naslin method
    
    alpha = 2;
    
    if type == 1
        
        r0 = (den(2)^2 - alpha* den(end)) / (2 * num * den(1));
        r1 = (den(end) + num*r0)^2 / (alpha * num * den(2));
        
        reg = [r0 r1];
    
    end
    
    if type == 2
       
        r1 = den(2)^2 / (alpha * den(1) * num) - den(3) / num;
        r0 = (den(3) + num * r1)^2 / (alpha * den(2) * num) - den(end) / num;
        r2 = (den(end) + num * r0)^2 / (alpha * (den(3) + num * r1) * num);
        
        reg = [r0 r2 r1];
        
    end
    
    if type == 2
       
        r1 = den(2)^2 / (alpha * den(1) * num) - den(3) / num;
        r0 = (den(3) + num * r1)^2 / (alpha * den(2) * num) - den(end) / num;
        
    end
    
    
end

