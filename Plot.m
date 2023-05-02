function [f1,f2,f3,f4,f5,f6] = Plot(PX,PY,PZ,PXv,PYv,PZv)

    f1 = plot3(PX,PY,PZ,'k-','MarkerSize',.5,'Linewidth',3); % downside of my cube with z=0
    f2 = plot3([PX(1),PXv(1)],[PY(1),PYv(1)],[PZ(1),PZv(1)],'y-','MarkerSize',.5,'Linewidth',3);
    f3 = plot3([PX(2),PXv(2)],[PY(2),PYv(2)],[PZ(2),PZv(2)],'g-','MarkerSize',.5,'Linewidth',3);
    f4 = plot3([PX(3),PXv(3)],[PY(3),PYv(3)],[PZ(3),PZv(3)],'m-','MarkerSize',.5,'Linewidth',3);
    f5 = plot3([PX(4),PXv(4)],[PY(4),PYv(4)],[PZ(4),PZv(4)],'c-','MarkerSize',.5,'Linewidth',3);
    f6 = plot3(PXv,PYv,PZv,'r-','MarkerSize',.5,'Linewidth',3); % upside of my cube with z=1

end