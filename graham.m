function [ reg ] = graham( num, den, type )
%PID regulator synthesis via Grahan lantrop

    if type == 1
       
        w0 = den(2) / 1.75;
        r0  = (2.15 * w0^2 - den(3)) / num;
        r1 = w0^3 / num;
        
    end
 
    
    reg = [r0 r1];

end

