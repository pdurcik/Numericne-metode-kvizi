%function y=steffensen(f,x0,delta,maxsteps)
%Funkcija f mora biti podana v obliki inline
%funkcije (npr. f=inline('x^2-2')).


%if nargin<3, delta=eps; end
%if nargin<4, maxsteps=50; end

seme=38; rand('seed',seme); x0=rand(1);

f=inline('cos(x)-x')

xn=x0;
x0=Inf;
korak=0; 

%original verzija
                  						 
%while (abs(xn-x0)>delta) && (korak<maxsteps) && (b>delta)
%    korak=korak+1;           						    
%    x0=xn;
%    b=(f(x0+f(x0))-f(x0))
%    xn=x0-((f(x0))^2/(f(x0+f(x0))-f(x0)));

%end

%verzija za kviz
for i=1:2
  x0=xn;
  xn=x0-((f(x0))^2/(f(x0+f(x0))-f(x0)))
end


y=xn