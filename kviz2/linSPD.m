seme=2017; rand('seed',seme);B=rand(3);A=B'*B; b=rand(3,1);
%function x=linSPD(A,b)
  V=chol(A);
  V'*V;
  y=V'\b;
  x=V\y;
%end

x


%%
%LU razcep
%A=LU
%[L U P]=lu(A)
%iz predavanj (brez pivotiranja):
%A=LU; (LUx=b, Ux=y); Ly=b; Ux=y
%iz predavanj (s pivotiranjem):
%PA=LU; (Ux=b, Ux=y); Ly=Pb; Ux=y

%razcep Choleski
%A simetricna poz definitna.. A=V'V
%%


% prema substitucija
function y=premasubstitucija(L,b)
n=size(L,1);
y=zeros(n,1);
for i=1:n
    y(i)=b(i); %nastavimo y na b
    for j=1:i-1
        y(i)=y(i)-L(i,j)*y(j); %odštejemo toliko vsot kolikor je treba
    end
end

end

%obratna substitucija
function x=obratnasubstitucija(U,y)
n=size(U,1);
x=zeros(n,1);
for i=n:-1:1 %od n do 1 s korakom 1
    x(i)=y(i); 
    for j=n:-1:i+1
        x(i)=x(i)-U(i,j)*x(j);
    end
    x(i)=x(i)/U(i,i);
end
end

%racunanje
function x=linearni(A,b)
[L U P]=lu(A);
y=premasubstitucija(L,P*b); %delno pivotiranje, zato P*B
x=obratnasubstitucija(U,y);
end