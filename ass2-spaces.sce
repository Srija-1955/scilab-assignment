A=input("Enter the coefficient matrix of nxn: ");
disp(A,'a=');
[v,pivot]=rref(A);
disp(rref(A));
disp(v);
r=length(pivot);
disp(r,'rank=');
cs=A(:,pivot);
disp(cs,'column space=');
ns=kernel(A);
disp(ns,'null space=');
rs=A(1:r,:)';
disp(rs,'row space=');
lns=kernel(A');
disp(lns,'left null space=');
