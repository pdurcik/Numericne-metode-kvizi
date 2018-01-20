function A=mat(i)
A=zeros(i,i); %naredi ničenlo matriko velikosti i+3 x i+3
k=1;
while k<=i;     %ta del povečuje elemnte pod diagonalo
  a=0+k;
  b=1;
  while a<=i;
  A(a,b)=A(a,b)+k;      %element na (a,b) mestu poveča za k
    a =a +1;
    b=b+1;
    end
  k=k+1;
end

k=2;
while k<=i;     %ta del povečuje elemnte nad diagonalo
  a=0+k;
  b=1;
  while a<=i;
    A(b,a)=A(b,a)+k;
    a=a+1;
    b=b+1;
    end
  k=k+1;
end


