function plot_ez(x,y,a,b)
%x,yΪ����
%a,b�ֱ�Ϊ�������ݰ���
% ecc=axes2ecc(a,b);
% [elat,elon]=ellipse1(x,y,[a,ecc],0);
% plot(elat,elon);
% if lab==1
%     color='g';
% else if lab==2
%         color='b';
%     else if lab==3
%             color='m';
%         end
%     end
% end
color='b';


theta=0:pi/40:2*pi;
X=x+a*cos(theta);
Y=y+b*sin(theta);
plot(X,Y,color);
hold on
%fill(X,Y,'g')
hold on
end