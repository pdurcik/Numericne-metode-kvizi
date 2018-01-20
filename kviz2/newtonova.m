a=1;
F=inline('[x^2+y^2+z^2-a, 2*x^2+y^2-4*z, 3*x^2-4*y+z^2]','x','y','z');
JF=inline('[2*x 2*y 2*z; 4*x 2*y -4; 6*x -4 2*z]');
x0=[1, 1, 1];
maxsteps=2;
delta=eps;

%%function y=newton(F,JF,x0,delta,maxsteps)

% y=NEWTON(F,JF,x0,delta,maxsteps) dela Newtonovo metodo za funkcijo F in Jacobianom JF 
% z zacetnim priblizkom x0. Funkciji F in JF morata biti podani v obliki inline funkcij 
% (npr. F=inline('[x(1)^2+x(2)^2-10*x(1)+x(2)-1, x(1)^2-x(2)^2-x(1)+10*x(2)-25]') ). 
% Iteracija se konca, ko se zadnja priblizka relativno razlikujeta za manj kot delta ali ko 
% prekoracimo maksimalno stevilo korakov maxsteps. Ce zadnjih dveh argumentov ne podamo, je 
% privzeta vrednost za delta osnovna zaokrozitvena napaka eps, za maxsteps pa 50.

% Bor Plestenjak 2004

%%if nargin<4, delta=eps; end
%%if nargin<5, maxsteps=50; end

xn=x0;
deltax=2*delta*x0;
korak=0;                    						 
while (norm(deltax)>delta*norm(xn)) & (korak<maxsteps)
   korak=korak+1;           						 
   x0=xn;
   % to je bil samo test JF(x0(1),x0(2),x0(3));
   % to je bil samo test F(x0(1),x0(2),x0(3));
   % to je bil samo test JF(x0(1),x0(2),x0(3))\((F(x0(1),x0(2),x0(3))))';
   deltax=-JF(x0(1),x0(2),x0(3))\(F(x0(1),x0(2),x0(3)))';
   xn=x0+deltax';
   %disp(sprintf('%15.15f  ',xn'));
   norm(deltax);
end
xn
