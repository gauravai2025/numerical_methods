%co2 and o2   vander waal equation
syms v f(v)           % for p=1,a=0.26,b=0.04267,T=300,g=3,h=7, n=
p=input("enter p:\n");
a=input("enter a:\n");  
b=input("enter b:\n");
T=input("enter T:\n");
R=0.082054;
g=input("enter lower limit");
h=input("enter uper limit");
n=input("enter number of iteration");
f(v)=p*v^3+a*v-p*v^2*b-a*b-v^2*R*T;

if f(g)*f(h)<0
   for i=1:n
       c=(g+h)/2;
       fprintf("c%d=%.4f",i,c);
       
       if f(g)*f(c)<0
           h=c;
       

       elseif f(c)*f(h)<0
               g=c;
       end
   end

else 
     display("root does not exist in interval");
end


