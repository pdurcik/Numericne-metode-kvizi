%baza prostora
f=@(x) (x+1)/((x.^2)+1);
F=inline('[1, x, x^2, x^3]','x');
E=[-3 -1 0 1 3];

G=ones(length(E));
Y=G(1:length(F(1)));

for i=1:length(E)
  G(i,:)=[F(E(i)),(-1)^(i-1)];
end

%druga stran sistema
for i=1:length(E)
  Y(i)=f(E(i));
end
Y=Y';

%rešitev sistema
K=linsolve(G,Y)

%polinom
p=@(x) K(1).*1 + K(2).*x + K(3).*(x.^2) + K(4).*(x.^3);
f=@(x) (x+1)/((x.^2)+1);
r=@(x) f(x)-p(x);
rr=@(x) p(x)-f(x);

x=-3:0.01:3;
plot(x,r(x),x,p(x),x,f(x));

%vrednosti residuala v toèkah iz množice E
vrednostiresiduala=ones(1,length(E));
for i=1:length(E)
  vrednostiresiduala(i)=r(E(i));
end

vrednostiresiduala

%TO NE DELA ŠE PRAV!!!
y1 = fminbnd(rr, -3,0);
z1 = fminbnd(rr, 0,3);
y2 = fminbnd(r, -3,0);
z2 = fminbnd(r, 0,3);


yy=max(abs(y1),abs(y2))
zz=max(abs(z1),abs(z2))
