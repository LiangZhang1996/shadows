function [HeightAngleArc,AzimuthAngleArc]=get_angle(time)
lat=37; %JT����γ��
deg=0;  %̫����γ
ED=deg/180*pi;
latitudeArc=lat/180*pi;%����γ��γ��ת��Ϊ�Ƕ�
dTimeAngle = 15.0*(time-12);
dTimeAngle = dTimeAngle*pi/180;	

HeightAngleArc = asin(sin(latitudeArc)*sin(ED)+cos(latitudeArc)*cos(ED)*cos(dTimeAngle));%̫���߶Ƚ�
CosAzimuthAngle = (sin(HeightAngleArc)*sin(latitudeArc)-sin(ED))/cos(HeightAngleArc)/cos(latitudeArc);%̫����λ��
AzimuthAngleArc = acos(CosAzimuthAngle);

end