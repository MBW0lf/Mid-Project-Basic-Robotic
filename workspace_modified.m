%% clear
clc;
clear;
close all;

%% 
DH_Modified_new;
theta1 = linspace(-180, 180, 5)*pi/180;
theta2 = linspace(-215, 35, 5)*pi/180;
theta3 = linspace(-48, 228, 5)*pi/180;
theta4 = linspace(-270, 270, 5)*pi/180;
theta5 = linspace(-120, 133.5, 5)*pi/180;
theta6 = linspace(-270, 270, 5)*pi/180;

[tgrid1, tgrid2, tgrid3, tgrid4, tgrid5, tgrid6] = ndgrid(theta1, theta2, theta3, theta4, theta5, theta6);

x_sym = T7_0(1, 4);
y_sym = T7_0(2, 4);
z_sym = T7_0(3, 4);

Th1 = tgrid1(:);
Th2 = tgrid2(:);
Th3 = tgrid3(:);
Th4 = tgrid4(:);
Th5 = tgrid5(:);
Th6 = tgrid6(:);
P1 = 320; P2 = 35; P3 = 225; P4 = 225; P7 = 65;

x = double(subs(x_sym)); 
y = double(subs(y_sym));
z = double(subs(z_sym));
%% 
% plot3(x, y, z)
% hold on
% k = boundary(x, y, z)
% plot3(x(k), y(k), z(k))
figure
k = boundary(x , y , z);
hold on ;
trisurf(k , x , y , z , 'facecolor' , 'red')
grid on

