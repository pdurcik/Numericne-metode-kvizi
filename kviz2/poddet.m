seme=2017; rand('seed',seme);B=rand(3);A=B'*B; b=rand(3,1);

%function d=poddet(A)
x=zeros(1,length(A(1,:)));
  for i=1:length(A(1,:));
    x(i)=det(A(1:i,1:i));
    end
d=x
%end