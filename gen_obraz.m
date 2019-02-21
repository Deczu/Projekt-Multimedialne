%generator obrazu generuje obraz pol bialy pol czarny oraz czarny kwadrat na bialym tle
obraz=zeros(256,256);
obraz=uint8(obraz);
for i=1:256
    for j=1:128
        obraz(i,j)=255;
    end
end
for i=1:256
    for j=128:256
        obraz(i,j)=0;
    end
end   
imwrite(obraz,'pol_na_pol.bmp');

obraz=ones(256,256);
obraz=obraz*255;
for i=128-60:128+60
    for j=128-60:128+60
        obraz(i,j)=0;
    end
end 
imwrite(obraz,'kwadrat.bmp');