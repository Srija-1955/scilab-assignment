A=input("Enter the coefficient matrix of mxn: ")
function [D]=gauss_jordan(A)
    [a1,a2]=size(A);//n,n1
    b=eye(a1,a2)
    C=[A b];
    [m,n]=size(C)
    for k=1:1:m
        indices=[1:1:k-1,k+1:1:m]
        for i=indices
            multiplier=C(i,k)/C(k,k)
            for j=k+1:n
                C(i,j)=C(i,j)-multiplier*C(k,j)
             end
         end
    end
    D=zeros(a1,a2)
    for i=1:1:a1
        for j=1:1:a2
            D(i,j)=C(i,m+j)/C(i,i)
        end
    end
    endfunction
disp(gauss_jordan(A))

