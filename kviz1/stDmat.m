%function [v,B]=stDmat(n)

seme=41; rand('seed',seme); n=randi([1 10]);


A=mat(n); %zgenerira matriko s pomočjo funkcije mat(n)
B=zeros(n,n);
for h = 1:n; %indeks vrstice
  for g = 1:n; %indeks stolpca
    j=A(h,g);
    t=stD(j); %stevilo deliteljev (h,g)-tega elementa
    B(h,g)=t; %st deliteljev da na (h,g) mesto v B
end
end
v=0; %tu bomo sesteli vsa stevila deliteljev elementov iz A
for h = 1:n;
  for g = 1:n;
    v = v + B(h,g);
end
end
v