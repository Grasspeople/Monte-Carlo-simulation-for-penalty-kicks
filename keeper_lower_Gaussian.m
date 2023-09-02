function [pos,rect,right] = keeper_lower_Gaussian(N)
%守门员颇喜欢倒地
    goal = [0,1,0,0,0;1,0,0,0,0;1,0,0,0,0;0,0,1,0,0;0,0,0,1,0;1,1,0,1,0;1,0,1,0,1;0,0,0,0,1];
    [~,rect,between]=simulation_Gaussian(N);
    rect_matrix = ceil([rect(:,1)+2,1-rect(:,2)]);
    ran1 = rand(size(rect_matrix,1),1);
    ran2 = rand(size(rect_matrix,1),1);
    keeper = round((ran1<0.1).*(ran2*3+0.5)+(ran1>=0.1).*(ran2*2+3.5));
    right = ~goal(sub2ind([4,2],rect_matrix(:,1),rect_matrix(:,2))+(keeper(:)-1).*8);
    pos = sum(right(:))/(length(rect)+length(between));
end