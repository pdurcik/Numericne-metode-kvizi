seme=2017; rand('seed',seme);
C=randi([12 35],[365 1])/10;
N=randi([7 52],[365 1]);

%%
%QR razcep
%A'Ax=A'b
%..naredi QR, Rx=Q'b
%%

%premica

At=[C';(ones(365,1))'];
A=At';
b=N;

[Q, R, P]=qr(A);
x=P*(R\Q'*b)
x(1);
x(2);
%N=x(1)*C+x(2) to je naša premica

dp=0;
for i=1:365
  dp=dp+(N(i)-x(1)*C(i)-x(2))^2;
end

dp %razdalja kvadratov do premice


%eksponentna

At=[exp(C)';(ones(365,1))'];
A=At';
b=N;

[Q, R, P]=qr(A);
x=P*(R\Q'*b)
x(1);
x(2);
%N=x(1)*exp(C)+x(2) to je naša eksponentna funkcija

de=0;
for i=1:365
  de=de+(N(i)-x(1)*exp(C(i))-x(2))^2;
end

de %razdalja kvadratov do eksponentne

min(dp,de)