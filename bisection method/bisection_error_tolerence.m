%co2 and o2
syms v f(v) 
p=input("enter p:\n");               % for p=6,a=2,b=2,T=100,g=3,h=7, e=
a=input("enter a:\n");
b=input("enter b:\n");
T=input("enter T:\n");
R=0.082054;
g=input("enter lower limit of g:\n");
h=input("enter upper limit of h:\n");
e=input("enter error tolerence");


f(v)=p*v^3+a*v-p*v^2*b-a*b-v^2*R*T;
if f(g)*f(h)<0
    while 1
        c=(g+h)/2;
        fprintf("c=%.4f\n",c);
        if abs(f(c))<=e
            
        %if abs(c-g)<e||abs(c-h)<=e
       break
    end
        if f(c)*f(g)<0
            h=c;
        elseif f(c)*f(h)<0
            g=c;
        end
    end     
   else
       display("no root in interval");
    
    end
