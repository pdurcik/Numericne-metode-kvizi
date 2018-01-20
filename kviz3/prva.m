bern = @(x,n,i) nchoosek(n,i) * x^i * (1-x)^(n-i);
f = @(x) sin(2*pi*x);

x = zeros(101,1);
for i=1:101
    x(i)=(i-1)/100;
end
Bn = 0;
napake = zeros(40,1);
for n=1:40 
    for j=1:101     
        for i=0:n
            Bn = Bn + f(i/n)*bern(x(j),n,i);
        end
        if abs(f(x(j)) - Bn) > napake(n)
            napake(n) = abs(max(f(x(j)) - Bn));
        end
        Bn = 0;
    end
            
end
n=[1:40]';
plot(n,napake)

napake
j=0;
for i=1:40
    if napake(i)<0.1
        if j==0
            j=napake(i);
            i
        end
    end
end

     
