function [ temp ] = rozszezanie( obraz_we )
    obraz_we=double(obraz_we(:,:,1));
    LW=size(obraz_we,1);
    LK=size(obraz_we,2);
    temp=zeros(LW+2,LK+2);          %zadeklarowanie powiêkszonej macierzy z obrazem
    temp(2:LW+1,2:LK+1)=obraz_we;   %wpisanie obrzau wejœciowego w œrodek powiêkszonej macierzy
    temp(1,2:LK+1)=obraz_we(1,:);   %powielenie pierwszego wiersz
    temp(LW+2,2:LK+1)=obraz_we(LW,:);%powielenie ostatniego wiersza
    temp(:,1)=temp(:,2);            %powielenie pierwszej kolumny
    temp(:,LK+2)=temp(:,LK+1);      %powielenie ostatniej kolumny

end

