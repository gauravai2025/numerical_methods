syms x f(x)
f(x)=2-x+log(x);
l=input("enter lower limit of g:\n"); % l=1 h=4 root  =3.1462
h=input("enter upper limit of h:\n");   % l=0.05 h=1.6 root=0.1586
e=input("enter error tolerence");
if(f(l)*f(h)<0)
    while 1
        c=(h+l)/2;
        fprintf("c=%.4f",c);
         if abs(c-l)<=e||abs(c-h)<=e
             break
         end
         if f(c)*f(l)<0
             h=c;
         elseif f(c)*f(h)<0
             
             l=c;
         end


    end
else
    display("root does not lie in given interval")
end