h=1/20;
f = @(x) exp(-2*x)+cos(5*x);
odvod1 = @(x) -2*exp(-2*x)-5*sin(5*x);
odvod2= @(x) 4*exp(-2*x)-25*cos(5*x);

xi=zeros(1,23);
for i=-1:21
  xi(i+2)=i*h;
end

prviodvodi=zeros(1,21);
drugiodvodi=zeros(1,21);
napaka1=0;
napaka2=0;

for i=0:20
  f1=(f(xi(i+3))-f(xi(i+1)))/(2*h);
  prviodvodi(i+1)=f1;
  f2=(f(xi(i+1))-2*f(xi(i+2))+f(xi(i+3)))/(h^2);
  drugiodvodi(i+1)=f2;
  prvitocen=odvod1(xi(i+2));
  drugitocen=odvod2(xi(i+2));
  if abs(prvitocen-f1)>napaka1
    napaka1=abs(prvitocen-f1);
  end
  if abs(drugitocen-f2)>napaka2
    napaka2=abs(drugitocen-f2);
  end
end
napaka1
napaka2
%MANJKAJO GRAFI!!!