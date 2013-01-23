f=input('f(x,y) = ');
f=inline(f);
y(1)=input('y(1) = ');
x(1)=input('x(1) = ');
h=input('h = ');
a=input('a = ');
n=abs((a-x(1))/h);
for i=1:n+1
    k(1)=h*f(x(i),y(i));
    k(2)=h*f(x(i)+h/2,y(i)+k(1)/2);
    k(3)=h*f(x(i)+h/2,y(i)+k(2)/2);
    k(4)=h*f(x(i)+h,y(i)+k(3));    
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+(1/6)*(k(1)+2*k(2)+2*k(3)+k(4));
end
disp (y(i+1))    