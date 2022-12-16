a2=input("enter coefficient of x2");
a1=input("enter coefficient of x");
a0=input("enter contant term value");
syms x f(x)    g(x)                  
f(x)=a2*x^2+a1*x+a0;
x0=input('enter initial guess\n');
e=input('enter error tolerence\n');
g(x)=diff(f(x));
while 1
    xi=x0-(f(x0)/g(x0));
    fprintf("x=%.4f \n",xi);
    if abs(xi-x0)<e
        break;
    else
        x0=xi;
    end
end