function [prob,rect,between] = simulation_Gaussian(N)
%N个点撒进圆里,返回[落进去的概率,落在门里的坐标，落在球里门外的坐标]
theta = rand(N,1).*(2*pi);
r = randn(N,1).*sqrt(5);
point(:,1) = r.*cos(theta);
point(:,2) = r.*sin(theta);
judgecircle = (point(:,1).*point(:,1)+point(:,2).*point(:,2)) < 5;
circle = point.*[judgecircle(:),judgecircle(:)];
circle(~all(circle,2),:) = [];
judgerect = (abs(circle(:,1))<2) & (abs(circle(:,2))<1);%判断是不是在长方形里面，返回一个logical矩阵（01矩阵）
rect = circle.*[judgerect(:),judgerect(:)];
between = circle - rect;
rect(~all(rect,2),:) = [];
between(~all(between,2),:) = [];%对于1的地方用红色，0的用蓝色
prob = sum(judgerect(:))/sum(judgecircle(:));%算落进去的概率
end
