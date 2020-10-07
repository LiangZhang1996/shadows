function plot_3ez(x,y,a,b,c,num)
if num==1
    color='green';
else if num==2
        color='blue';
    else if num==3
            color='r';
        else
            color='yellow';
        end
    end
end
[x1,y1,z1]=ellipsoid(x,y,c/2,a/2,b/2,c/2);
plot3(x1,y1,z1,'Color',color)
hold on
end