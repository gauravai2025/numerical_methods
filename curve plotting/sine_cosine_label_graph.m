x=1:360;
y=sind(x);
plot(y);

title('trigo', 'color', 'r')
xlabel('degree','color', 'g')
text(90,1,'\rightarrow max')
z= cos(x);
hold on 
plot(z)
