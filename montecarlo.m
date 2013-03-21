% montecarlo realizacija
% sugeneruojame 100 atsitiktiniu tasku is intervalo[a;b]
% turesime surasti didziausias ir maziausias reiksmes 

a=-10
b=10
x = a + (b-a).*rand(100,1);
f=sincos(x);
[fMin,indMin]=min(f) 
[fMax, indMax]=max(f)
xMin=x(indMin)
xMax=x(indMax)
fprintf('Surastas min=%6.4 f, taske x=%6.4 f',fMin,xMin);
fprintf('Surastas max=%6.4 f, taske x=%6.4 f',fMax,xMax);

