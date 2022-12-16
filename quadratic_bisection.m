a2=input("enter coefficient of x2");
a1=input("enter coefficient of x");
a0=input("enter contant term value");
syms x f(x)                     
f(x)=a2*x^2+a1*x+a0;
% initial guess l=2.3, r=5  one roots 3 can be found by 20 iteration
% initial guess l=0.2, r=2.9 another roots 2 can be found by  iteration
l=input("enter left interval value");
r=input("enter right  interval value");
i=input("enter number of iteration");
while i>0
    c=(l+r)/2;
     if f(c)*f(l)<0
         r=c;
     
     elseif  f(c)*f(r)<0
         l=c;
     end
     fprintf("c%d=%.4f\n",i,c);
    i=i-1;
end

