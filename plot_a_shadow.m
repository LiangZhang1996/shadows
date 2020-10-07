function plot_a_shadow(x,y,a_x,b_y,c_z,theta,sin_rotate,cos_rotate,time)

%%
de=sqrt(1-(0^2)/(a_x^2));
a=b_y*de;
b=c_z*de;    

data=get_loca(c_z,a,b,theta);

% get the new b 
new_b=abs(data(1)-data(2))/2;
% the new a 
new_a=a_x;

%if theta>=0.001
t=0:pi/40:2*pi;%

% get the ellipse
X=new_a*cos(t);
Y=min(data)+new_b+new_b*sin(t);
%%
% shadow rotate to the left
if  time<=12
A=[cos_rotate -sin_rotate;sin_rotate cos_rotate];
end
% shadow  rotate to the right
if time>12
  A=[cos_rotate sin_rotate;-sin_rotate cos_rotate];  
end
% the rotated ellipse
New=A*[X;Y];
Newx=x+New(1,:);
Newy = y+New(2,:);
%fill(Newx,Newy,'b')
%plot(x+New(1,:),y+New(2,:))
patch('YData',Newy,'XData',Newx,...
    'FaceAlpha',0.08,...
    'FaceColor','b',...
    'EdgeColor','none');
hold on

end