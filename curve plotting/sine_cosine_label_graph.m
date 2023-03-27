x=0:360;
y=sind(x);
hold on;
grid on
plot(x,y)
title('sine and cosine function', 'color', 'r','FontSize',10)
xlabel(' x axis degree 0<=x<=360','color', 'g')
ylabel(' y axis function value -1<=y<=1','color', 'b')
text(90,1,'\rightarrow max')
text(270,-1,'\leftarrow min')
z= cosd(x);
plot(x,z)
hold on 
text(0,1,'\rightarrow max')
text(180,-1,'\leftarrow min')
legend('sine','cosine','Location','best')
