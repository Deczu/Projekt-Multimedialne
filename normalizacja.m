function [ obraz_wy ] = normalizacja( obraz_wy,maska9,lap )
%{

%}

    figure;
    if(lap==1)
        %skalowanie
        obraz_wy=obraz_wy + 8*255;
        obraz_wy=uint8(obraz_wy/16);
    elseif(lap==2)
        %modu³
        obraz_wy=abs(obraz_wy);
        obraz_wy=uint8(obraz_wy/8);
    elseif(lap==3)
        %skalowanie z obcieciem
        for i=1:length(obraz_wy)
            for j=1:length(obraz_wy);
                if(obraz_wy(i,j)< -127)
                   obraz_wy(i,j)=-127; 
                elseif(obraz_wy(i,j)> 128)
                    obraz_wy(i,j)=128; 
                end
            end
        end
        obraz_wy=uint8(obraz_wy+127);
    
    elseif(lap==4)
        %mod z obcieciem
        for i=1:length(obraz_wy)
            for j=1:length(obraz_wy);
                if(obraz_wy(i,j)< 0)
                   obraz_wy(i,j)=0; 
                end
            end
        end
        obraz_wy=uint8(obraz_wy/8);
    elseif(lap==5)
        sem=sum(sum(maska9));
        minVal=min(min(maska9));
        if minVal>=0
            obraz_wy=uint8(obraz_wy/sem);
        end
    elseif(lap==6)
       minVal=min(min(obraz_wy));
       maxVal=max(max(obraz_wy));
       obraz_wy=uint8(((obraz_wy-minVal)/(maxVal-minVal))*255); 
    end
    animacja=uint8(zeros(256,256));
    for i=1:length(animacja)
        for j=1:length(animacja)
            animacja(i,j)=obraz_wy(i,j);
        end
        imshow(animacja)
    end
 

 end


