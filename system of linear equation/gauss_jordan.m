a= input("enter  coefficient matrix");
b= input("enter  source matrix");
n= length(b);
x=zeros(n,1);

aug= [a b];

for i=1:n
    aug(i,:)=aug(i,:)/aug(i,i); % diagonal element 1
    for j=1:n
        if j~=i  % i not equal j
        aug(j,:) = aug(j,:)-(aug(j,i)*aug(i,:));
        
        end
    end
end
for k=1:n
    x(k)=aug(k,n+1);
end
display("solution of system")
display(x)