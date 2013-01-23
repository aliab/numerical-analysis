syms x;
a=input('a = ');
b=input('b = ');
n=input('n = ');
h=(b-a)/n;
f=input('f(x) = ');
f=inline(f);
s=0;
e=0;
for i=1:n
    x=a+(i-1)*h;
    s=s+f(x);
    y=a+i*h;
    e=e+f(y);
end
c=h*(s+e)/2;
disp(c)
