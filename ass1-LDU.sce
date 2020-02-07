

//LU DECOMPOSITION

//FACTORIZING A INTO L AND U (A = LU)
clc;clear;
function lu_decomposition(A)
    [r,c]=size(A);
    u=A;
    l=eye(r,c);
    for i=1:(r-1)
        m=det(u(i,i));
        for j=i+1:c
            n=det(u(j,i))
            a=n/m;
            l(j,i)=a;
            u(j,:)=u(j,:)-u(i,:)/(m/n);
        end
    end
disp(l,'The lower triangular matrix L is');
disp(u,'The upper triangular matrix U is');
endfunction

disp('Factorization of A into L and U');
A=input('Enter elements of matrix: ');
disp(A,'The given matrix is A=');
lu_decomposition(A);

//SOLVING SYSTEM OF EQUATIONS BY LU DECOMOSITION
clc;clear;
format('v',5);
function lu_decomposition(a, b)
    [r,c]=size(a);
    b=b';
    l=eye(r,c);
    for i=1:r
        for j=1:c
            s=0;
            if j>=i
                for k=1:i-1
                    s=s+l(i,k)*u(k,j);
                end
                u(i,j)=a(i,j)-s;
            else
                for k=1:j-1
                    s=s+l(i,k)*u(k,j);
                end
                l(i,j)=(a(i,j)-s)/u(j,j);
            end
        end
    end
    c=l\b;
    x=u\c;
disp(l,'The lower triangular matrix L is');
disp(u,'The upper triangular matrix U is');
disp(x,'Solution of system of equation is ');
endfunction

disp("Solving system of equation by LU decomposition");
a=input('Enter elements of matrix A: ');
b=input('Enter elements of matrix B: ');
disp(a,'The coefficient matrix A is');
disp(b,'The constant matrix b is');
lu_decomposition(a,b);


	
