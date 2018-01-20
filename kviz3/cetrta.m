x=[0 pi/12 pi/6 pi/3 pi/2];
F=inline('[1, x, x^2, x^3,x^4]','x');
f=@(x) sin(x);

%raèunanje polinoma p in q (postopek kot v nalogi 3)
G=ones(length(F(1)));
Y=G(1:length(F(1)));

H=ones(length(F(1)));
Z=H(1:length(F(1)));

for i=1:length(F(1))
  G(i,:)=F(x(i));
  H(i,:)=F(f(x(i)));
end

for i=1:length(F(1))
  Y(i)=f(x(i));
  Z(i)=x(i);
end

Y=Y';
P=linsolve(G,Y);

Z=Z';
Q=linsolve(H,Z);

%oba polinoma
p=@(x) P(1)+P(2).*x+P(3).*x^2+P(4).*x^3+P(5).*x^4;
q=@(x) Q(1)+Q(2).*x+Q(3).*x^2+Q(4).*x^3+Q(5).*x^4;


%tabeliranje p(q(pi*i/20)) [pqt] in q(p(pi*i/20)) [qpt]
navadna=ones(1,11);
tabelaf=ones(1,11);
pqt=ones(1,11);
qpt=ones(1,11);
pgft=ones(1,11);
for i=0:10
  navadna(i+1)=(pi)*i/20;
  tabelaf(i+1)=f((pi)*i/20);
  pqt(i+1)=p(q((pi)*i/20));
  qpt(i+1)=q(p((pi)*i/20));
  pqft(i+1)=p(q(f((pi)*i/20)));
end

pqt;
qpt;
pqft;

%primerjave p(q(t_i)) - t_i za t_i=pi*i/20, q(p(t_i)) - t_i za t_i=pi*i/20
%           p(q(f(t_i))) - f(t_i) za t_i=pi*i/20

abs(pqt-navadna);
abs(qpt-navadna);
abs(pqft-tabelaf);

%iskanje indeksa
%find( vector == min(vector) ) 
find( abs(qpt-navadna) == max(abs(qpt-navadna)) );