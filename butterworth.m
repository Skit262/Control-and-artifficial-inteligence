function [ reg ] = butterworth( num, den, type )
%PID regulator synthesis via Butterworth

    if type == 1
    
        w0 = den(2) / 2;
        r0  = (2 * w0^2 - den(3)) / num;
        r1 = w0^3 / num;
        
    end
    
    reg = [r0 r1];
end

