A=[0 1 1 ;1 1 2 ;0 0 3];

[Q, R, P]=qr(A);
P*(R\Q'*[1;0;1])
P