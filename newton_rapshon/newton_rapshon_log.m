syms x f(x) g(x)
f(x)=2-x+log(x);
x0=input('enter initial guess\n');
e=input('enter error tolerence\n');
g(x)=diff(f(x));
while 1
    xi=x0-(f(x0)/g(x0));  % rapshon formla
    fprintf("x=%.4f\n",xi);
    if abs(f(xi))<e
        break;
    else
        x0=xi;
    end


end
