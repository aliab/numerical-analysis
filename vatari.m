syms x;
f=input('function : ');
y=inline(f);
x(1)=input('a = ');
x(2)=input('b = ');
err=input('err = '); 
x(3)=x(2)-((x(2)-x(1))*y(x(2))/(y(x(2))-y(x(1))));
i=2;
while (abs(x(i+1)-x(i))>=err)
    i=i+1;
    x(i+1)=x(i)-((x(i)-x(i-1))*y(x(i))/(y(x(i))-y(x(i-1))));
end
x(i+1)
