a=2;
f=@(x) x/a - atan(x);

x = 0:0.1:3;
plot(x,f(x))

%iskanje nicle

j=1;
k=3;
for i=1:5
  c=(j+k)/2;
  if f(j)*f(c)<0
        k=c;
  elseif f(k)*f(c)<0
        j=c;
  end
end

g=@(x) a*atan(x);
nicla=(j+k)/2;
for i=1:2
  nicla=g(nicla);
end

nicla