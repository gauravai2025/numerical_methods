% gauss elimination method

a= input("enter  coefficient matrix");
b= input("enter  source matrix");
n= length(b);
x=zeros(n,1);

aug= [a b];
%display(aug)
for i=1:n-1
    for j=i+1:n
        aug(j,:) = aug(j,:)-((aug(j,i)/aug(i,i))*aug(i,:));
    end
end
x(n)=aug(n,n+1)/aug(n,n);
for k=n-1:-1:1
    
    x(k)=(aug(k,n+1)-(aug(k,k+1:n)*x(k+1:n)))/aug(k,k);
end
display(x)

