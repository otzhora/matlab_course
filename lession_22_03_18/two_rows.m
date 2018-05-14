function two_rows(arr)
    m = size(arr);
    
    if m(1) == 2
        disp(arr)
        return 
    end
        disp('arr must have two dims')
        disp(zeros(m(1),m(2)))        
end
