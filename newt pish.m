n=input('n = ');
for i=1:n
    disp(i)
    x(i)=input('x = ');
    f(i)=input('f = ');
end
for i=1:n-1
    d(i,1)=((f(i+1)-f(i))/(x(i+1)-x(i)));
end
for i=n-2:-1:1
    for j=1:i
        d(j,n-i)=((d(j+1,n-i-1)-d(j,n-i-1))/(x(j+n-i)-x(j)));
    end
end
syms a
g=0;
for i=1:n-1
    y=1;
    for j=1:i
        y=y*(a-x(j));
    end
    h=y*d(1,i);
    g=g+h;
end
p=f(1)+g;
p=expand (p);
disp(p)