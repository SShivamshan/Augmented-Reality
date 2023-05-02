function [RT,P] = Projection(H,k)

    % We are creating an intermediate matrix to find our rotation matrix
    % and translation vector
    U = inv(k)*H;
    % We calculate our approximate R1, R2 and T
    R1c = U(:,1);
    R2c = U(:,2);
    Tc = U(:,3);

    % R3 approximate is the cross product between R1 approximate and R2 approximate
    R3c = cross(R1c,R2c);
    
    % We create here our R approximate matrix
    Rc = [R1c,R2c,R3c,Tc;0,0,0,1];

    a = nthroot(det(Rc),4);

    % Here, we calculate our rotation matrix using a and approximate
    % rotation matrix
    R1 = 1/a*R1c;
    R2 = 1/a*R2c;

    % R3 is the cross product between R1 and R2
    R3 = cross(R1,R2);

    R = [R1,R2,R3]; % Rotation Matrix
    
    T = 1/a*Tc; % Translation Vector
    
    % We create here our Rotation and Translation matrix
    RT = [R T];
    
    % Here, we calculate our projection matrix using our RT matrix and
    % intrinsic matrix
    P = k*[R T];
    
end