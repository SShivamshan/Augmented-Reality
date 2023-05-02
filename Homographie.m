function [H] = Homographie(p1,p2)
    assert(length(p1)+length(p2) >=4);
    
    A = zeros(8,9);
    
    k = 0;
    for i=1:8
        if mod(i,2) ~= 0 % 1,3,5,7
            k = k+1;
            A(i,:) = [p1(k,1),p1(k,2),1,0,0,0,-p2(k,1).*p1(k,1),-p2(k,1).*p1(k,2),-p2(k,1)];
        else % 2,4,6,8
            A(i,:) = [0,0,0,p1(k,1),p1(k,2),1,-p2(k,2).*p1(k,1),-p2(k,2).*p1(k,2),-p2(k,2)];
        end
    end

    AT = A.';
    
    [e] = eig(AT*A);
    
    % SVD helps us to find H
    [U,S,V] = svd(A);
     
    % Our H matrix correspond to the last column of the V matrix
    h = V(:,9);

    % Ma matrice H
    H = [h(1) h(2) h(3);
         h(4) h(5) h(6);
         h(7) h(8) h(9)];
     
    % We normalize our H matrix
    H = H/H(3,3);
   
end






