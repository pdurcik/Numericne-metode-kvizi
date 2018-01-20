%To je datoteka za preverjanje pravilnosti naprogramiranih rešitev.
%Sledi navodilom in primerjaj rezultate s svojimi!

%PRVA NALOGA: 
%Za a=1 in približek [1 1 1] po dveh korakih metode dobiš:
ans =

    0.8007   0.5034   0.3743
    
%Druga naloga
%Za zaèetek poženi ukaze
seme=2017; rand('seed',seme);x=rand(10,1); 
%Èe si pravilno razumel toèko a), bi moral pri b) za dani x dobiti 
%naslednjo matriko
V =

  Columns 1 through 7

    1.0000    0.5373    0.2887    0.1551    0.0834    0.0448    0.0241
    1.0000    0.7957    0.6332    0.5038    0.4009    0.3190    0.2539
    1.0000    0.7475    0.5587    0.4176    0.3122    0.2333    0.1744
    1.0000    0.7072    0.5002    0.3538    0.2502    0.1770    0.1251
    1.0000    0.7145    0.5105    0.3648    0.2606    0.1862    0.1330
    1.0000    0.5274    0.2781    0.1467    0.0774    0.0408    0.0215
    1.0000    0.9079    0.8243    0.7484    0.6795    0.6170    0.5601
    1.0000    0.4968    0.2468    0.1226    0.0609    0.0303    0.0150
    1.0000    0.7831    0.6133    0.4803    0.3761    0.2945    0.2307
    1.0000    0.8284    0.6863    0.5686    0.4710    0.3902    0.3233

  Columns 8 through 10

    0.0129    0.0069    0.0037
    0.2020    0.1607    0.1279
    0.1304    0.0974    0.0728
    0.0885    0.0626    0.0443
    0.0951    0.0679    0.0485
    0.0113    0.0060    0.0032
    0.5086    0.4617    0.4192
    0.0075    0.0037    0.0018
    0.1806    0.1415    0.1108
    0.2678    0.2219    0.1838

%Možno pa je tudi, da si koeficienta polinoma razvrstil v obratni vrstni 
%red, torej od a_n do a_1. V tem primeru si stolpci sledijo v obratnem
%vrstnem redu.

%V obeh primerih je njena obèutljivost enaka
1.9540e+12
%Norma razlike, ki jo išèemo v toèki c) pa
2.0708e-05

%TRETJA NALOGA
%Za zaèetek poženi ukaze
seme=2017; rand('seed',seme);B=rand(3);A=B'*B; b=rand(3,1);
%Ukaz poddet(A) bi ti moral vrniti
ans =

    1.4806
    0.1052
    0.0149
%Ukaz linSPD(A,b) pa
ans =

    2.9132
   -3.4740
    0.8035
    
%ÈETRTA NALOGA
%Za zaèetek poženi ukaze
seme=2017; rand('seed',seme);
C = randi([12 35],[365 1])/10;
N = randi([7 52],[365 1]);
%Pri danih podatkih sta koeficienta premice enaka
a=-0.2281   b=30.1866
%koeficienta eksponentne krivulje pa
a=-0.0095   b=29.7690
%Vsoti kvadratov razlik vertikalnih oddaljenosti znašata
razlika_premica=6.6314e+04
razlika_eksponentna=6.6320e+04
%V tem primeru je premica torej bolj ustrezna za aproksimacijo!