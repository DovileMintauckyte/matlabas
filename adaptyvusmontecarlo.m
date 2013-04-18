function [fMin2visi,vidurkis]=adaptyvusmontecarlo(funkcija,a1,b1)
% montecarlo realizacija
% sugeneruojame 100 atsitiktiniu tasku is intervalo[a;b]
% turesime surasti didziausias ir maziausias reiksmes 
%a=-10;% pradine sritis
%b=10;
%PALEIDIMAS
%pvz. a1=-10; b1=10; funkcija=@sincos2;
%function [fMin2,xMin2]=adaptyvusmontecarlo(funkcija,a1,b1)
fMin2visi=[];
for k=1:100
n=2;% dimensija
k1=50;% kiek eiluciu
x1 = a1 + (b1-a1).*rand(k1, n);
f1=[];
for i=1:k1            % pravedam cikla nes dvimatis mas 
   f1(i)=funkcija(x1(i,:)); %i nuo 1 iki 100 ,: kad visa eilute imsim
end
[fMin1,indMin1]=min(f1); 
%[fMax1, indMax1]=max(f);
xMin1=x1(indMin1,:);%  dvitaski reikalingas kad visas eilute paimtu
%xMax1=x(indMax1,:);

%fprintf('Surastas min1=%6.4f, taske x1=(%6.4f,%6.4f)\n',fMin1,xMin1(1),xMin1(2)); 

%fprintf('Surastas max=%6.4f, taske x=(%6.4f,%6.4f)\n',fMax1,xMax1(1),xMax1(2));
%{
    hold on;
scatter(x1(:,1),x1(:,2),'b.');
scatter(xMin1(1),xMin1(2),'r*');
text(xMin1(1)+0.3,xMin1(2),num2str(fMin1));
rectangle('Position',[-10.0,-10.0,20.0,20.0],...
    'LineWidth',5,'Linestyle','--')
%grafikas2
%}
%fMin,indMin]=min(f); 
a2=xMin1(1)-2;% a2<=  x(1) <=b2
b2=xMin1(1)+2; 
a3=xMin1(2)-2; ;% a3<=  x(2) <=b3
b3=xMin1(2)+2; ;
n=1;
k2=50;% kiek eiluciu
 if (a2<-10)  
     a2=-10; b2=-6;
 end
 if (a3<-10)
     a3=-10; b3=-6;
 end
 if (b2>10)
     b2=10;
     a2=6;
 end
  if (b3>10)
      b3=10;
      a3=6;
  end

x2(:,1) = a2 + (b2-a2).*rand(k2, n);%
x2(:,2)= a3 + (b3-a3).*rand(k2, n);
f2=[];
for i=1:k2            % pravedam cikla nes dvimatis mas 
   f2(i)=funkcija(x2(i,:)); 
end
[fMin2,indMin2]=min(f2); 
%[fMax2, indMax2]=max(f);
xMin2=x2(indMin2,:);%  dvitaski reikalingas kad visas eilute paimtu
%xMax=x(indMax,:);

%fprintf('Surastas min2 = %6.4f, taske x2 = (%6.4f,%6.4f)\n',fMin2,xMin2(1),xMin2(2)); 

%fprintf('Surastas max=%6.4f, taske x=(%6.4f,%6.4f)\n',fMax2, xMax2(1),xMax2(2));
%grafikas2
%{
hold on;
scatter(x2(:,1),x2(:,2),'b.');
scatter(xMin2(1),xMin2(2),'g*');
text(xMin2(1)+0.3,xMin2(2),num2str(fMin2));
rectangle('Position',[a2,a3,4.0,4.0],...
    'LineWidth',5,'Linestyle','--')
%}
fMin2visi=[fMin2visi;fMin2];
%figure;
end
vidurkis = mean(fMin2visi);

