
//Q3.largest eigen vector
A=input('enter the matrix A:')
disp(A,'the given matrix is')
u0=[1 1 1]'
disp(u0,'the initial vector is')
v=A*u0
a=max(u0)
disp(a,'first approximation to eigen value is')
while abs(max(v)-a)>0.002
    disp(v,"current eigen vector is")
    a=max(v)
    disp(a,"current eigen value is")
    u0=v/max(v)
    v=A*u0
end
format('v',4)
disp(max(v),'the largest eigen value is:')
format('v',5)
disp(u0,'the corresponding eigen vector is:')
