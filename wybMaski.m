function [ maska9 ] = wybMaski(  )
while(1) %wybor  maski (Laplasjanu)
    clc;
    fprintf('Dostepne Maski');
    disp(' ');
    fprintf('1 [0 -1 0; -1 4 -1;0 -1 0]');
    disp(' ');
    fprintf('2 [1 -2 1; -2 4 -2;1 -2 1]');
    disp(' ');
    fprintf('3 [-1 -1 -1; -1 8 -1;-1 -1 -1]]');
    disp(' ');
    fprintf('4 [-1 0 -1;0 4 0;-1 0 -1]');
    disp(' ');
    fprintf('5 [-1 -1 -1; -1 9 -1;-1 -1 -1]');
    disp(' ');
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
    elseif lap==5
             maska9=[-1 -1 -1; -1 9 -1;-1 -1 -1];
             break;
    else          
         fprintf('Zly klawisz');
    end
end

end

