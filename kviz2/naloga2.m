%x=rand(10,1);
seme=2017; rand('seed',seme);x=rand(10,1); 

%ceska verzija xD
V=[1 x(1) x(1)^2 x(1)^3 x(1)^4 x(1)^5 x(1)^6 x(1)^7 x(1)^8 x(1)^9
    1 x(2) x(2)^2 x(2)^3 x(2)^4 x(2)^5 x(2)^6 x(2)^7 x(2)^8 x(2)^9
    1 x(3) x(3)^2 x(3)^3 x(3)^4 x(3)^5 x(3)^6 x(3)^7 x(3)^8 x(3)^9
    1 x(4) x(4)^2 x(4)^3 x(4)^4 x(4)^5 x(4)^6 x(4)^7 x(4)^8 x(4)^9
    1 x(5) x(5)^2 x(5)^3 x(5)^4 x(5)^5 x(5)^6 x(5)^7 x(5)^8 x(5)^9
    1 x(6) x(6)^2 x(6)^3 x(6)^4 x(6)^5 x(6)^6 x(6)^7 x(6)^8 x(6)^9
    1 x(7) x(7)^2 x(7)^3 x(7)^4 x(7)^5 x(7)^6 x(7)^7 x(7)^8 x(7)^9
    1 x(8) x(8)^2 x(8)^3 x(8)^4 x(8)^5 x(8)^6 x(8)^7 x(8)^8 x(8)^9
    1 x(9) x(9)^2 x(9)^3 x(9)^4 x(9)^5 x(9)^6 x(9)^7 x(9)^8 x(9)^9
    1 x(10) x(10)^2 x(10)^3 x(10)^4 x(10)^5 x(10)^6 x(10)^7 x(10)^8 x(10)^9];

%profi verzija
W=zeros(length(x));
for k=1:length(x)
  m=0;
  for n=1:length(x)
    x(k);
    W(k,n)=x(k)^m;
    m=m+1;
  end
end

W

cond(W)
y
%a2=W\y
a1=linsolve(W,y)'
a=[0 1 0 0 0 0 0 0 0 0];
a-a1;
norm(a-a1)