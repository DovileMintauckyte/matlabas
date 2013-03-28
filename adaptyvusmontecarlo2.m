% montecarlo realizacija
% sugeneruojame 100 atsitiktiniu tasku is intervalo[a;b]
% turesime surasti didziausias ir maziausias reiksmes 

a=-10;
b=10;
n=2;% dimensija  kiek stulpeliu
k=2;% kiek eiluciu
x = a + (b-a).*rand(100, n);%perdaryti kad generuotu dvimati (rand viduje kiek ant kiek matrica)
for i=1:k            % pravedam cikla nes dvimatis mas 
   f(i)=sincos2(x(i,:)); %i nuo 1 iki 100 ,: kad visa eilute imsim
end
[fMin,indMin]=min(f); 
[fMax, indMax]=max(f);
xMin=x(indMin,:);%  dvitaski reikalingas kad visas eilute paimtu
xMax=x(indMax,:);% 
fprintf('Surastas min=%6.4f, taske x=(%6.4f,%6.4f)\n',fMin,xMin(1),xMin(2)); 
fprintf('Surastas max=%6.4f, taske x=(%6.4f,%6.4f)\n',fMax, xMax(1),xMax(2));
%grafikas2

