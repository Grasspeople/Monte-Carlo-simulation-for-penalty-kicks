clear
[hun_uni,rect_hun_uni,right_hun_uni] = keeper_lower_Uniform(100);
subplot(2,2,1);
colour = right_hun_uni.*[1,0,0]+(1-right_hun_uni).*[0,0,1];
scatter(rect_hun_uni(:,1),rect_hun_uni(:,2),10,colour,"filled")%画图
axis equal;
[thou_uni,rect_thou_uni,right_thou_uni] = keeper_lower_Uniform(1000);
subplot(2,2,2);
colour = right_thou_uni.*[1,0,0]+(1-right_thou_uni).*[0,0,1];
scatter(rect_thou_uni(:,1),rect_thou_uni(:,2),10,colour,"filled")%画图
axis equal;
[hun_gau,rect_hun_gau,right_hun_gau] = keeper_lower_Gaussian(100);
subplot(2,2,3);
colour = right_hun_gau.*[1,0,0]+(1-right_hun_gau).*[0,0,1];
scatter(rect_hun_gau(:,1),rect_hun_gau(:,2),10,colour,"filled")%画图
axis equal;
[thou_gau,rect_thou_gau,right_thou_gau] = keeper_lower_Gaussian(1000);
subplot(2,2,4);
colour = right_thou_gau.*[1,0,0]+(1-right_thou_gau).*[0,0,1];
scatter(rect_thou_gau(:,1),rect_thou_gau(:,2),10,colour,"filled")%画图
axis equal;