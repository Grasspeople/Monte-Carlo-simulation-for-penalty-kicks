function [pos,rect,right] = keeper_Gaussian(N)
%高斯分布点球N次，返回进球/圆圈圈
    goal = [0,1,0,0,0;1,0,0,0,0;1,0,0,0,0;0,0,1,0,0;0,0,0,1,0;1,1,0,1,0;1,0,1,0,1;0,0,0,0,1];
    [~,rect,between]=simulation_Gaussian(N);
    rect_matrix = ceil([rect(:,1)+2,1-rect(:,2)]);
    keeper = round(rand(size(rect_matrix,1),1)*5+0.5);
    right = ~goal(sub2ind([4,2],rect_matrix(:,1),rect_matrix(:,2))+(keeper(:)-ones(size(keeper,1),1)).*8);
    pos = sum(right(:))/(length(rect)+length(between));
end

