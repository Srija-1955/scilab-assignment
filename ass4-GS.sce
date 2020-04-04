//Q1.Gram- Schmidt Orthogonalization in R3

a=input("Enter the independent vector a: ");
b=input("Enter the independent vector b: ");
c=input("Enter the independent vector c: ");
A=[a;b;c];
disp(A,'A=')
[m,n]=size(A)
for k=1:n
    v(:,k)=A(:,k)
    for j=1:k-1
        r(j,k)=v(:,j)'*A(:,k)
        v(:,k)=v(:,k)-r(j,k)*v(:,j)
    end
    r(k,k)=norm(v(:,k))
    v(:,k)=v(:,k)/r(k,k)
end
disp(v,"Q=")
