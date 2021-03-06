%%
%Electric Skateboard Motor and Pulley Selection Calculations
clear all
clc
top_speed_mph = 22; %mph
top_speed = .44704*top_speed_mph %m/s

dia_wheel = .083; %m
radius_wheel = dia_wheel/2;
circum = dia_wheel * pi;
rot_per_sec = top_speed/circum;
rpm = rot_per_sec*60

voltage = 12*3.7; %volts

KV = 200;

maxrpm_motorKV = voltage*KV

reduction = maxrpm_motorKV/rpm

grade = .30; %percent grade
angle = atand(grade); %degrees angle
weight = 778; %Newtons = 175lb, force of gravity towards the center of the earth

Fx = weight*sind(angle) %Force pushing you down parallel to the hill
Fy = weight*cosd(angle); %Force pushing you normal to the ground

lbs = Fx * .2248 %Force in lbs pushing you down hill
T_wheels = Fx*.083/2 %Torque in Nm at the wheels
T_motor = Fx*.083/2/reduction %Torque in Nm at the wheels
T_inlb_wheels = lbs*3.26/2 %torque at the wheels
T_inlb_motor = lbs*3.26/2/reduction %torque at the motor

15*reduction
