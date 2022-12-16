%co2
close all
clear all
clc                          % p=1,a=0.26,b=0.04267 ,T=300 , %x= (R*t)/p; 
syms v f(v) g(v)
p=input("enter p:\n");      % if inital guess x= 20 n=5
a=input("enter a:\n");       % if inital guess x=18 n=8
b=input("enter b:\n");
t=input("enter Temp:\n");
R=0.082054;
n=input("enter number of iteration");

f(v)=p*v^3+a*v-p*v^2*b-a*b-v^2*R*t;
g(v)=diff(f(v));
 % initial guess 
 x=input('initail guess\n');
for i=1:n
   x=eval(x-(f(x)/g(x))); % formula of newton raphson
   
   fprintf('volume%d  :%.4f\n',i,x);
end