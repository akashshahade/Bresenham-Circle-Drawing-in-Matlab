

function bres_circle(a,b,r)
clc, clear, clf,close
a = input('Give the centre X coord : ');     % X coord of centre
b = input('Give the centre Y coord : ');     % Y coord of centre
r = input('Give the radius of circle : ');   % Radius of the circle to be drawn
inc = input('Give the increment step for coordinate[Default:1]: '); % Use the value 
if isempty(inc)                              % of inc greater than 1
    inc =1;                                  % usually less than radius
end

x = 0;
y = r;
d= 3-2*r;

while(x < y)
	funplot(a,b,x,y,r);
	if d>=0
		d = d +4*(x-y)+10;
		x = x + 1/inc;
		y = y - 1/inc;
	else
		d = d + 4*x +6;
		x = x+1/inc;
	end 
end
function funplot(a,b,p,q,r)
for i= -1:2:1
	for j= -1:2:1
		plot(a+i*p,b+j*q,'r.');
        plot(a+i*q,b+j*p,'r.');
		grid off
		hold on
	end
end
title('Bresenham circle')
axis([a-r-1 a+r+1 b-r-1 b+r+1])
axis equal;









 
 