syms x;
f=input('function : ');
y=inline(f);
ff=diff(f);
yp=inline(ff);
x(1)=input('x0 = ');
err=input('err = '); 
x(2)=x(1)-(y(x(1))/yp(x(1)));
i=1;
while (abs(x(i+1)-x(i))>=err)
    i=i+1;
    x(i+1)=x(i)-(y(x(i))/yp(x(i)));
end
x(i+1)
