function [PX,PY,PZ,PXv,PYv,PZv] = Point_Projection(P)
    % Coordinates of the center of our cirlces with z=0 and z=1
    c1 = [0;0;0;1]; c1v = [0;0;1;1];
    c2 = [1;0;0;1]; c2v = [1;0;1;1];
    c3 = [1;1;0;1]; c3v = [1;1;1;1];
    c4 = [0;1;0;1]; c4v = [0;1;1;1];
    c5 = [0;0;0;1]; c5v = [0;0;1;1];

    % We are projecting our points using the projection matrix
    C1 = P*c1; C1v = P*c1v;
    C2 = P*c2; C2v = P*c2v;
    C3 = P*c3; C3v = P*c3v;
    C4 = P*c4; C4v = P*c4v;
    C5 = P*c5; C5v = P*c5v;

    % We normalize here our projected points
    P1 = C1/C1(3); P1v = C1v/C1v(3);
    P2 = C2/C2(3); P2v = C2v/C2v(3);
    P3 = C3/C3(3); P3v = C3v/C3v(3);
    P4 = C4/C4(3); P4v = C4v/C4v(3);
    P5 = C5/C5(3); P5v = C5v/C5v(3);

    % We are creating a vector which contains x coordinates of our five
    % points --> Useful for plot coordianates
    PX = [P1(1),P2(1),P3(1),P4(1),P5(1)];
    PY = [P1(2),P2(2),P3(2),P4(2),P5(2)];
    PZ = [0,0,0,0,0];

    PXv = [P1v(1),P2v(1),P3v(1),P4v(1),P5v(1)];
    PYv = [P1v(2),P2v(2),P3v(2),P4v(2),P5v(2)];
    PZv = [1,1,1,1,1];
    %disp(PX);
end
