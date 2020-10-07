function data=get_loca(hight,a,b,theta)

syms x x0

k=-x*b/(a*(a^2-x^2)^(1/2));
x0=solve(tan(theta)==k,x);
% intercept of the tangent
inter_y=eval(x0^2*b/(a*(a^2-x0^2)^(1/2))+b/a*(a^2-x0^2)^(1/2));

inter_x=inter_y/tan(theta);
% the hight = b
Inter_y=inter_y+hight;
Inter_x1=Inter_y/tan(theta);
Inter_x2=Inter_x1-2*inter_x;
data=[Inter_x1 ,Inter_x2];

end