function [ obraz_wy,animacja ] = normalizacja( obraz_wy,maska9 )
%{
Normalizacja jest uniwersalna i pozwala na rozszezenie programu o dodatkowe
maski sem(suma elementow maski) wykozystana jesli minVal>=0 co jest
wynikiem filtracji maska 

%}

    figure;
    sem=sum(sum(maska9));
    minVal=min(min(maska9));
    if minVal>=0
        obraz_wy=uint8(obraz_wy/sem);

    else
        minVal=min(min(obraz_wy));
        maxVal=max(max(obraz_wy));
       obraz_wy=uint8(((obraz_wy-minVal)/(maxVal-minVal))*255); 
    end
    animacja=uint8(zeros(256,256));
    for i=1:length(animacja)
        for j=1:length(animacja)
            animacja(i,j)=obraz_wy(i,j);
        end
        imshow(animacja);
    end

 end


