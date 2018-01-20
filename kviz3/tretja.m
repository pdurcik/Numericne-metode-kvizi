f=@(x) exp(x.*(x+1));

%baza prostora
L=inline('[1, sin(x), cos(x), sin(x)*cos(x)]','x');

%Greenova matrika
G=ones(length(L(1)));
Y=G(1:length(L(1)));

%for i=1:length(L(1))
%  for j=1:length(L(1))
%    G(i,j)=quad(@(x)L(x)(i).*L(x)(j),-1,1,1e-12);
%  end
%end

G(1,1)=2;
G(2,2)=quad(@(x)sin(x).*sin(x),-1,1,1e-12);
G(3,3)=quad(@(x)cos(x).*cos(x),-1,1,1e-12);
G(4,4)=quad(@(x)sin(x).*cos(x).*sin(x).*cos(x),-1,1,1e-12);
G(1,2)=quad(@(x)1.*sin(x),-1,1,1e-12);
G(2,1)=G(1,2);
G(1,3)=quad(@(x)1.*cos(x),-1,1,1e-12);
G(3,1)=G(1,3);
G(1,4)=quad(@(x)1.*sin(x).*cos(x),-1,1,1e-12);
G(4,1)=G(1,4);
G(2,3)=quad(@(x)sin(x).*cos(x),-1,1,1e-12);
G(3,2)=G(2,3);
G(2,4)=quad(@(x)sin(x).*sin(x).*cos(x),-1,1,1e-12);
G(4,2)=G(2,4);
G(3,4)=quad(@(x)cos(x).*sin(x).*cos(x),-1,1,1e-12);
G(4,3)=G(3,4);

G

%druga stran sistema
%for i=1:length(L(1))
%  Y(i)=quad(@(x)L(x)(i).*f(x),-1,1,1e-12);
%end

Y(1)=quad(@(x)1.*f(x),-1,1,1e-12);
Y(2)=quad(@(x)sin(x).*f(x),-1,1,1e-12);
Y(3)=quad(@(x)cos(x).*f(x),-1,1,1e-12);
Y(4)=quad(@(x)sin(x).*cos(x).*f(x),-1,1,1e-12);

Y=Y'

%rešitev sistema
K=linsolve(G,Y)

%polinom
p=@(x) K(1).*1 + K(2).*sin(x) + K(3).*cos(x) + K(4).*sin(x).*cos(x);

%graf
x=-1:0.1:1;
plot(x,p(x),x,f(x));

%druga norma: koren iz skalarnega produkta funkcije same s sabo!!!
r=@(x) f(x)-p(x);
(quad(@(x)r(x).*r(x),-1,1,1e-12))^(1/2)