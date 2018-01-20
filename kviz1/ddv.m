seme=76; rand('seed',seme); neto=randi([0 500],[1000 1])/100;

ddv_skupaj=0;
ddv_posebej=0;
vsota=0;
%neto = randi([0 500],[1000 1])/100;
for i = 1:length(neto)
vsota = vsota + neto(i);
j=(neto(i)*0.095);
ddv_posebej = ddv_posebej + (round(j*100)/100);
end

vsota = vsota*0.095;
ddv_skupaj = round(vsota*100)/100
ddv_posebej

rezultat = ddv_skupaj-ddv_posebej

