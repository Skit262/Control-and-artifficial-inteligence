function [ q ] = psd( coef, periode )
%Computation PSD parameters based on PID and periode

    K = coef(1);
    Ti = K / coef(2);
    
    if length(coef) == 2
    
        q(1) = K + (K * periode / (2 * Ti));
        q(2) = -K + (K * periode / (2 * Ti));
    
    end


end

