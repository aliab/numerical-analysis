syms x;
n=input('n = ');
for i=1:n
    disp(i);
    x(i)=input('x = ');
    f(i)=input('y = ');
end
syms a h
for i=1:n
    h(i)=1;
    for j=1:n
        if i~=j
           h(i)=(h(i))*(a-x(j))/(x(i)-x(j));
        end
    end
end
g=0;
for i=1:n
    y=h(i)*f(i);
    g=g+y;
end
g=inline(expand(g));
disp(g)