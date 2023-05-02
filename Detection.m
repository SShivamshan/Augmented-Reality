function [X,Y] = Detection(img)

    [first,radii1] = imfindcircles(img,[80 95],'ObjectPolarity','dark', ...
        'Sensitivity',0.98);

    [second,radii2] = imfindcircles(img,[140 155],'ObjectPolarity','dark', ...
        'Sensitivity',0.98);

    [third,radii3] = imfindcircles(img,[50 70],'ObjectPolarity','dark', ...
        'Sensitivity',0.98);

    [fourth,radii4] = imfindcircles(img,[170 185],'ObjectPolarity','dark', ...
        'Sensitivity',0.98);

    % We use ObjectPolarity --> dark, because our cirlces colours are
    % darker than the background ou our photo.
    % We have to have a higher sensitivity to detect our circles

    x1 = first(1,1);
    y1 = first(1,2);
    x2 = second(1,1);
    y2 = second(1,2);
    x3 = third(1,1);
    y3 = third(1,2);
    x4 = fourth(1,1);
    y4 = fourth(1,2);

    X = [x1;x2;x3;x4];
    Y = [y1;y2;y3;y4];
end
