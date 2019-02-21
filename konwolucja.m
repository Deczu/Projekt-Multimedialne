function [ obraz_wy ] = konwolucja( maska9,temp,flaga )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
obraz_wy=ones(256,256);
for i=2:length(temp)-1
    for j=2:length(temp)-1
        temp2=temp(i-1:i+1,j-1:j+1);%pobranie fragmentu obrazu
        temp2=temp2.*maska9;    %przemnozenie go przez maske 
        obraz_wy(i-1,j-1)=sum(sum(temp2)); % zsumowanie elementow ktore w nastepnej funkcji zostana znormalizowane
    end
    imshow(obraz_wy);
end
if(flaga)
    obraz_wy(125:130,125:130)
    fprintf('Wydaæ tutaj przeskok zwi¹zany z filtracj¹ z du¿ych wartoœæi dodatnich na ujemne a nastêpnie na zero. Przyk³ad : ')
    disp(' ');
end
end
%W wizualizacji poszarpany obraz powstaje czesciowo przez fakt i¿ z uwagi na
%maske i charakter obliczen niektore wsp. obrazu sa ujemne. Problem
%rozwiazuje normalizacja!!!!
