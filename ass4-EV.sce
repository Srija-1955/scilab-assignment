//Q2.EIGEN VECTOR 

A=input('enter the matrix A')
lam=poly(0,'lam')
lam=lam
cm=A-lam*eye(3,3)
disp(cm,'the characteristic matrix:')
cp=poly(A,'lam')
disp(cp,'the characteristic polynomial:')
lam=spec(A)
disp(lam,'the eigen values of A are')
function[x,lam]=eigenvectors(A)
    [n,m]=size(A)
    lam=spec(A)'
    x=[]
    for k=1:3
        B=A-lam(k)*eye(3,3)
        C=B(1:n-1,1:n-1)
        b=-B(1:n-1,n)
        y=C\b
        y=[y;1]
        y=y/norm(y)
        x=[x y]
    end
endfunction
[x,lam]=eigenvectors(A)
disp(x,'the eigen vectors of A are');
