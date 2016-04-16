function [ der ] = ziegler( num, den )

den = conv(den, [1 0]);
derden = polyder(den);
dernum = polyder(num);

firstnum = minus(conv(num, derden), conv(dernum, den));
firstden = conv(den, den);

der = firstnum;

end

