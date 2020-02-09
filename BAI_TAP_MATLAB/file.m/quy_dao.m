clc;
clear variables
close all;

%% CONSTANTS
G = 6.67e-11; % Gravity constant
M = 5.97219e24; % Mass of Earth
R_earth = 6371e3; % Radius of Earth

%% INPUT PARAMETRS FOR USER
r = [-2*R_earth 0 0]; % Initial possition
v = [0 -7.2e3 0]; % Initial velocity
N_orbit = 1000;
dt = 100; % time interval

%% Gravitational Potential
norm_U = 2e-7;
rmin = R_earth;
rmax = 10*R_earth;
Nr = 50;
Nalpha = 50;
radius = linspace(rmin,rmax,Nr);
alpha = linspace(0,2*pi,Nalpha);
[Radius,Alpha] = meshgrid(radius,alpha);
X_matrix = Radius.*cos(Alpha);
Y_matrix = Radius.*sin(Alpha);
U_matrix = -G*M./Radius*norm_U;

d = 5;
t = 0;

U = -G*M/sqrt(r(1)^2+r(2)^2)*norm_U;
orbit_array = zeros(3,N_orbit);
orbit_array(:,end) = [r(1)/R_earth,r(2)/R_earth,r(3)/R_earth];
potential_track_array = zeros(3,N_orbit);
potential_track_array(:,end) = [r(1)/R_earth,r(2)/R_earth,U];

%% FIGURE
%figure('name','Analys koefficients of Fourier series',...
%'color','black','numbertitle','off')
%set(gca,'color','k','xcolor','w','ycolor','w','zcolor','w')
%hold on
%view(-60,20);
%axis equal
%rotate3d on
%xlabel('x [R_E]','fontsize',14);
%ylabel('y [R_E]','fontsize',14);
%zlabel('U x0.5x10^7[J]','fontsize',14);

sphere; % Draw Earth

hf_sputnik = plot3(r(1)/R_earth,r(2)/R_earth,r(3)/R_earth,...
'yo','markersize',d,'markerfacecolor','y');
% hf_orbit = plot3(orbit_array(1,:),orbit_array(2,:),orbit_array(3,:),...
% 'yo','markersize',1);
hf_U = plot3(r(1)/R_earth,r(2)/R_earth,U,...
'bo','markersize',d,'markerfacecolor','b');
hf_potential_track = plot3(potential_track_array(1,:),...
potential_track_array(2,:),potential_track_array(3,:),...
'go','markersize',1);

%% ANIMATION
while 1
t = t+dt;

R_2 = sum(r.^2);
R = sqrt(R_2);
a = -G*M/R^3*r;
v = v+a*dt;
r = r+v*dt;

U = -G*M/sqrt(r(1)^2+r(2)^2)*norm_U;

orbit_array(:,1:end-1) = orbit_array(:,2:end);
orbit_array(:,end) = r./R_earth;

potential_track_array(:,1:end-1) = potential_track_array(:,2:end);
potential_track_array(:,end) = [r(1)/R_earth,r(2)/R_earth,U];

set(hf_sputnik,...
'xdata',r(1)/R_earth,...
'ydata',r(2)/R_earth,...
'zdata',r(3)/R_earth);
% set(hf_orbit,...
% 'xdata',orbit_array(1,:),...
% 'ydata',orbit_array(2,:),...
% 'zdata',orbit_array(3,:));

set(hf_U,'xdata',r(1)/R_earth,'ydata',r(2)/R_earth,'zdata',U);
set(hf_potential_track,...
'xdata',potential_track_array(1,:),...
'ydata',potential_track_array(2,:),...
'zdata',potential_track_array(3,:));

pause(0.01);
end