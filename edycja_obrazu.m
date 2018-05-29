function [ obraz_wy ] = edycja_obrazu( maska9,temp )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
obraz_wy=ones(256,256);
for i=2:length(temp)-1
    for j=2:length(temp)-1
        temp2=temp(i-1:i+1,j-1:j+1);%pobranie fragmentu obrazu
        temp2=temp2.*maska9;    %przemnozenie go przez maske 
        obraz_wy(i-1,j-1)=sum(sum(temp2)); % zsumowanie elementow ktore w nastepnej funkcji zostana znormalizowane
    end
    image = imshow(obraz_wy);
end
end
%W wizualizacji poszarpany obraz powstaje czesciowo przez fakt i¿ z uwagi na
%maske i charakter obliczen niektore wsp. obrazu sa ujemne. Problem
%rozwiazuje normalizacja!!!!
