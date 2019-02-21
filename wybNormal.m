function [ lap2 ] = wybNormal(  )
fprintf('1.Skalowanie');
disp(' ');
fprintf('2.Mod');
disp(' ');
fprintf('3.Skalowanie z obcieciem');
disp(' ');
fprintf('4.Mod z obcieciem');
disp(' ');
fprintf('5.Dodatkowa metoda 1(Dobra gdy suma el. maski >0 i el. maski s¹ dodatnie)');
disp(' ');
fprintf('6.Dodatkowa metoda 2');
disp(' ');
while(1)
    lap2 = input(' Wybierz metode normalizacji: ');
    if(lap2 == 1 || lap2 == 2 || lap2 == 3 || lap2 == 4 || lap2 == 5 || lap2 == 6)
        break
    end
    fprintf('Brak metody');
    disp(' ');
end
end

