syms x;
a=input('a = ');
b=input('b = ');
n=input('n = ');
h=(b-a)/n;
f=input('f(x) = ');
f=inline(f);
y=0;
for i=1:1:n
    x=a+(i-(1/2))*h;
    y= y+f(x);
end
c=h*y;
disp(c)
