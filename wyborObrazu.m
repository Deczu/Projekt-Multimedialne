function [ obraz_we,flaga ] = wyborObrazu(  )
fprintf('Wczytaj Obraz');
disp(' ');
fprintf('1.Kwadrat');
disp(' ');
fprintf('2.Pó³ na Pó³');
disp(' ');
fprintf('3.Lena');
disp(' ');
fprintf('4.W³asny Obraz');
disp(' ');
while(1)
    ob = input('Numer Obrazu ?');
    if(ob==1)
        obraz_we=imread('kwadrat.bmp');
        flaga=0;
        break
    elseif(ob==2)
        obraz_we=imread('pol_na_pol.bmp');
        flaga=1;
        break
    elseif(ob==3)
        obraz_we=imread('lena.bmp');
        flaga=0;
        break
    elseif(ob==4)
        dest=input('Œcierzka dost. do pliku','s');
        obraz_we=imread(dest);
        flaga=0;
        break
    else
        fprintf('Nie ma takiego Obrazu');
        disp(' ');
    end
end

end

