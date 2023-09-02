clear
[~,rect,between] = simulation_Gaussian(1000);
scatter(rect(:,1),rect(:,2),50,'red','d')%画图
hold on
scatter(between(:,1),between(:,2),50,'blue','*')
axis equal;%把坐标系弄弄匀称
%别忘了加入图例，前往别忘了