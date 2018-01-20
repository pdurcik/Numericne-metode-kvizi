seznam=randi([400 600],[3 1])/100;
ddvji=[];
kombinacja={};


%vsota od vsakga ddvja posebi
delni=0;
for i=1:length(seznam)
  j=(round((seznam(i)*0.095)*100)/100);
  delni = delni+j;
  end
ddvji=[ddvji delni];


%ddv od vseh skupi
delni=0;
for i=1:length(seznam)
  delni=delni+seznam(i);
  end
if (round((delni*0.095)*100)/100)<min(ddvji)
  kombinacja=[kombinacja {123}];
  end
ddvji=[ddvji (round((delni*0.095)*100)/100)]; 
  

%ena + dva
for i=1:length(seznam)
  delni=0;
  k=(round((seznam(i)*0.095)*100)/100);
  delni = delni+k;
  delniii=0;
  for j=1:length(seznam)
    if i~=j
      delniii=delniii+seznam(j);
      end
      end
  delniii=(round((delniii*0.095)*100)/100);
  delni=delni+delniii;
  if delni<min(ddvji)
    h=0;
    d=0;
    kombinacja=[kombinacja {i}];
    for k=1:length(seznam);
      if i~=k
        d=d+k*10^h;
        h=h+1;
        end
        end
    kombinacja=[kombinacja {d}];
    end
  ddvji=[ddvji delni];
  end

%
if length(kombinacja)==0
  for i=1:length(seznam)
    kombinacja=[kombinacja {i}];
    end
    end
    
ddvji
%[M,I]=min(ddvji);
kombinacja