a=input('a = ');
b=input('b = ');
n=input('n = ');
h=(b-a)/(2*n);
f=input('f(x) = ');
f=inline(f);
y=0;
for i=1:2:2*n
    x=a+i*h;
    if x<b
        y=y+f(x);
    end
end
g=0;
for i=2:2:2*n
    x=a+i*h;
    if x<b
        g=g+f(x);
    end
end
c=(h/3)*(f(a)+4*y+2*g+f(b));
disp(c)
