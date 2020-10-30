function [x,y] = bezierSpline(X,Y,t)
%the endpoint
x1 = X(1)
x2 = X(2)
y1 = Y(1)
y2 = Y(2)
%the control point
x3 = X(3)
x4 = X(4)
y3 = Y(3)
y4 = Y(4)

% bezier spline function
bx = 3*(x2-x1);
by = 3*(y2-y1);
cx = 3*(x3-x2)-bx;
cy = 3*(y3-y2)-by;
dx =x4-x1-bx-cx;
dy = y4-y1-by-cy;

x = x1 + bx*t + cx*(t.^2) + dx*(t.^3);
y = y1 + by*t + cy*(t.^2) + dy*(t.^3);
end

