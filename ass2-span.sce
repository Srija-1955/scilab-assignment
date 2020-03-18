A=input("Enter the coefficient matrix of nxn: ")

function span(A)
    [a1,a2]=size(A);//n,n1
    //forward elimination
    n=size(A,1);
    for j=1:a1-1
        for i=j+1:a1
           A(i,j:n)=A(i,j:n)-A(i,j)/A(j,j)*A(j,j:n)
        end
    end
    disp(A)
    for i=1:3
    for j=i:3
        if(A(i,j)<>0)
            disp('is a pivot column',j,'column')
            disp(A(:,j))
            break
        end
    end
end
endfunction
span(A)

