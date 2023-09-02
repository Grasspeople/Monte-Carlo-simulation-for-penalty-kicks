function [prob,rect,between] = simulation_Uniform(N)
% N points are scattered into the circle 
% returning [probability of falling in, coordinates of falling in the door, coordinates of falling inside and outside the door of the ball]
u = rand(N,1);
theta = rand(N,1).*(2*pi);
r = sqrt(u).*sqrt(5);
circle(:,1) = r.*cos(theta);
circle(:,2) = r.*sin(theta);
% Determine whether it is in a rectangle and return a logical matrix (01 matrix)
judgerect = (abs(circle(:,1))<2) & (abs(circle(:,2))<1);
rect = circle.*[judgerect(:),judgerect(:)];
between = circle - rect;
rect(~all(rect,2),:) = [];
between(~all(between,2),:) = [];%For 1 use red, 0 use blue
prob = sum(judgerect(:))/N;%calculate the probability of dropping in
end