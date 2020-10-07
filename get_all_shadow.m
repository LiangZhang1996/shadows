function get_all_shadow(x,y,a_x,b_y,c_z)


for t=5:0.2:19
[theta,rotate]=get_angle(t);
%sin_rotate=sqrt(1-cos_rotate^2);
plot_a_shadow(x,y,a_x,b_y,c_z,theta,sin(rotate),cos(rotate),t)
%i=i+1;
end