close all;
clear all;
clc;
%{
Program zrealizowany w ramach projektu uczelnianego z przedmiotu Systemy
Multimedialne.
Wykonano na PWSZ TARNÓW
Do w pe³ni poprawnego dzia³ania zaleca siê u¿ycie matlaba 2017a
Na wersji 2010b obraz z funkcji konwolucja nie rysuje siê dynamicznie
%}
[obraz_we,flaga]=wyborObrazu();%wczytanie obrazu
temp=rozszezanie(obraz_we);  %rozszezenie obrazu w celu filtracji maska 3x3
obraz=uint8(obraz_we(:,:,1)); %potrzebne w ostatnim wykresie jest to wczytany obraz
maska9=wybMaski(); %wybranie maski 
obraz_wy=konwolucja(maska9,temp,flaga);%przeliczanie nowych elementów obrazu   ZMIENIC NAZWE NA KONWOLICJA
obraz2=obraz_wy;
lap2=wybNormal(); %wybieranie normalizacji
obraz3=normalizacja(obraz_wy,maska9,lap2); %normalizacja obrazu
fprintf('Enter aby kontynuowaæ');
disp(' ');
pause;
figure
subplot(3,1,1)%sumaryczny wykres Obraz wczytany po konw + konw i norm
imshow(obraz)
title('Obraz Oryginalny');
subplot(3,1,2)
imshow(obraz2)
title('Obraz po konwolucji');
subplot(3,1,3)
imshow(obraz3)
title('Obraz po konwolucji i normalizacji');


