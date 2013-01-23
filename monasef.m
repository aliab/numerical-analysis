syms x;
f=input('fun = ');
f=inline(f);
a=input('a = ');
b=input('b = ');
er=input('er = ');
if (f(a)*f(b)>0)                                  
    while(f(a)*f(b)>0)
        a=input('a = ');  
        b=input('b = ');
    end    
end
if (f(a)==0)
    disp (a);
elseif (f(b)==0)
    disp (b);
end
i=0;
i=i+1;
c(i)=(a+b)/2;
if (f(a)*f(c(i))<0) 
    b=c(i);
elseif (f(b)*f(c(i))<0)
    a=c(i);
end
c(i+1)=(a+b)/2;
while (abs(c(i+1)-c(i))>=er)
    if (f(a)*f(c(i+1))<0)
        b=c(i+1);
    elseif (f(b)*f(c(i))<0)
        a=c(i+1);
    end
    i=i+1;
    c(i+1)=(a+b)/2;
end
disp (c(i+1))