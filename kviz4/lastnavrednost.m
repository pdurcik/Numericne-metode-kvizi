A=zeros(10);
for i=1:10
    for j=1:10
        A(i,j)=(-1)^(1-i-j)*abs(i-j);
    end
end
x=[1 0 0 0 0 0 0 0 0 0];

c=[0 2/3 3/2 3];
c1=0;
c2=2/3;
c3=3/2;
c4=3;

lv=eig(A);

%lastna vrednost najblije 0
%morda je treba do 10^(-11)

lastnavrednost0=0;
y=(x/norm(x,2))';
lv=eig(A);
kj=min(abs(lv));
kjkj=-min(abs(lv));

while abs(abs(lastnavrednost0)-kj)>10^(-10)&abs(abs(lastnavrednost0)-kjkj)>10^(-10)
  y=linsolve(A,y);
  y=y/norm(y,2);
  lastnavrednost0=1/(y'*inv(A)*y);
end

lastnavrednost0

%lastna vrednost najblije 2/3
%morda je treba do 10^(-11)

lv=eig(A);
lastnavrednost23=0;
y=(x/norm(x,2))';
lv=eig(A-2/3*eye(10));
kj=min(abs(lv))+2/3;
kjkj=-min(abs(lv))+2/3;

while abs(abs(lastnavrednost23)-kj)>10^(-10) & abs(abs(lastnavrednost23)-kjkj)>10^(-10)
  y=linsolve(A-2/3*eye(10),y);
  y=y/norm(y,2);
  lastnavrednost23=1/(y'*inv(A-2/3*eye(10))*y)+2/3;
end

lastnavrednost23

%lastna vrednost najblije 3/2
%morda je treba do 10^(-11)

lv=eig(A);
lastnavrednost32=0;
y=(x/norm(x,2))';
lv=eig(A-3/2*eye(10));
kj=min(abs(lv))+3/2;
kjkj=-min(abs(lv))+3/2;

while abs(abs(lastnavrednost32)-kj)>10^(-10) & abs(abs(lastnavrednost32)-kjkj)>10^(-10)
  y=linsolve(A-3/2*eye(10),y);
  y=y/norm(y,2);
  lastnavrednost32=1/(y'*inv(A-3/2*eye(10))*y)+3/2;
end

lastnavrednost32

%lastna vrednost najblije 3/2
%morda je treba do 10^(-11)

lv=eig(A);
lastnavrednost3=0;
y=(x/norm(x,2))';
lv=eig(A-3*eye(10));
kj=min(abs(lv))+3;
kjkj=-min(abs(lv))+3;

while abs(abs(lastnavrednost3)-kj)>10^(-10) & abs(abs(lastnavrednost3)-kjkj)>10^(-10)
  y=linsolve(A-3*eye(10),y);
  y=y/norm(y,2);
  lastnavrednost3=1/(y'*inv(A-3*eye(10))*y)+3;
end

lastnavrednost3