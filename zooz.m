syms x;
a=input('a = ');
b=input('b = ');
n=input('n = ');
h=(b-a)/n;
f=input('f(x) = ');
f=inline(f);
y=0;
for i=1:n-1
    x=a+i*h;
    y=y+f(x);
end
c=(h/2)*(f(a)+2*y+f(b));
disp(c)
