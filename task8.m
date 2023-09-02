clear
[hun,rect_hun,right_hun] = keeper_Uniform(100);
subplot(2,1,1);
colour = right_hun.*[1,0,0]+(1-right_hun).*[0,0,1];
scatter(rect_hun(:,1),rect_hun(:,2),10,colour,"filled")%画图
axis equal;
fprintf("踢一百球的概率为：%.4f\n",hun);
[tho,rect_tho,right_tho] = keeper_Uniform(1000);
subplot(2,1,2); 
colour = right_tho.*[1,0,0]+(ones(length(right_tho),1)-right_tho).*[0,0,1];
scatter(rect_tho(:,1),rect_tho(:,2),10,colour,"filled")%画图
axis equal;
fprintf("踢一千球的概率为：%.4f\n",tho);