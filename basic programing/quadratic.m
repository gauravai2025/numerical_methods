function [x1,x2]= quadratic(a,b,c)
x=sqrt(b*b-4*a*c);
y=2*a;
x1=(-b+x)/y;
x2=(-b-x)/y;
end