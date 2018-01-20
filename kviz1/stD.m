function s=stD(n)
%seme=41; rand('seed',seme); n=randi([1 10]);


s=0;
f=n;
while real(f)>=1;
  y=rem(n,f);
    if y==0;
    s = s + 1;
    f = f - 1;
  else f=f - 1;
end
end
