close all;
clear all;
clc;
obraz_we=imread('lena.png'); % Wczytanie obrazu
temp=rozszezanie(obraz_we);  %rozszezenie obrazu w celu filtracji maska 3x3
while(1) %wybor  maski (Laplasjanu)
    clc;
    chr = '1 [0 -1 0; -1 4 -1;0 -1 0]';
    chr = [chr newline '2 [1 -2 1; -2 4 -2;1 -2 1]'];
    chr = [chr newline '3 [-1 -1 -1; -1 8 -1;-1 -1 -1]'];
    chr = [chr newline '4 [-1 0 -1;0 4 0;-1 0 -1]']
    lap = input(' Wybierz jedn¹ z masek: ');
    if(lap==1)
        maska9=[0 -1 0; -1 4 -1;0 -1 0];
        break;
    elseif lap==2
             maska9=[1 -2 1; -2 4 -2;1 -2 1];
             break;
    elseif lap==3
             maska9=[-1 -1 -1; -1 8 -1;-1 -1 -1];
             break;
    elseif lap==4
                maska9=[-1 0 -1;0 4 0;-1 0 -1];
                break;
    else        
         fprintf('Zly klawisz');
    end
end
obraz_wy=edycja_obrazu(maska9,temp);%przeliczanie nowych elementów obrazu
pause;
[obraz_wy,animacja]=normalizacja(obraz_wy,maska9); %normalizacja obrazu


