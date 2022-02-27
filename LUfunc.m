function [L U] = LUFunc(A)

    
    

    n = size(A);
    n_row = n(1);
    n_col = n(2);
    u = eye(n_row,n_col);

%     R = NaN(n);
%     for i=1:n_row;
%       for j=1:n_col;
%         R(i,j) = det(M([1:i-1 i+1:end],[1:j-1 j+1:end]));
%       end
%     end
    
    for i= 1:(n_row-1)
        for j=i+1:n_row
            multiplier = A(j, i)./A(i, i);
            u(j,i) = multiplier;
            for k=i:n_col
                A(j,k) = A(j,k) - multiplier.*A(i,k);
                
            end
    
        end
    end
    
    U = u;
    L = A;
    disp("L (Lower Triangular Matrix is");
    disp(L);
    disp("U (Upper Triangular Matrix is");
    disp(U);
    


end