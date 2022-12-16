a2=input("enter coefficient of x2");
a1=input("enter coefficient of x");
a0=input("enter contant term value");
syms x f(x)                     
f(x)=a2*x^2+a1*x+a0;
% initial guess l=1.2, r=2.7 one roots 2 can be found by 20 iteration
% initial guess l=2.2, r=3.7 another roots 3 can be found by  iteration
l=input("enter left interval value");
r=input("enter right  interval value");
e=input("enter value of erro tolerence ");

while 1
     c=(l+r)/2;
   % if abs(c-l)<=e || abs(c-r)<=e
       %  break
    % end
    if abs(f(c))<=e
        break
    end
     if f(c)*f(l)<0
         r=c;
     
     elseif  f(c)*f(r)<0
         l=c;
     end
     fprintf("c=%.4f\n",c);
     
end
 fprintf("c=%.4f\n",c);
