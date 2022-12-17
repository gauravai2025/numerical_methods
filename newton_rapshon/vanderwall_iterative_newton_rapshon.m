%co2
syms v f(v) g(v)
p=1;
a=0.26;
b=0.04267;
R=0.082054;
T=300;

f(v)=p*v^3+a*v-p*v^2*b-a*b-v^2*R*T;
g(v)=diff(f(V));
x= (r*t)/p;  % initial guess 
for i=1:100
   x=eval(x-f(x)/g(x));  % formula of newton raphson
end
fprintf('volume