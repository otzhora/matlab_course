function hw()
    format short
    
    fid = fopen('gr108m.txt', 'r+');
    
    n = fscanf(fid, '%d', [1]);
    D = fscanf(fid, '%d', [2, n]);
    
    fclose(fid);
    
    x = D(1, : );
    y = D(2, : );
    
    disp('Height and weight: ')
    disp(x)
    disp(y)
    
    Mx = sum(x) / n;
    My = sum(y) / n;
    
    Dx = sum((x-Mx).^2)/n
    Dy = sum((y-My).^2)/n
    
    Sx = sqrt(Dx)
    Sy = sqrt(Dy)
end
