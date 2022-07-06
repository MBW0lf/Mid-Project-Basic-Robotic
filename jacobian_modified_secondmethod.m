%% clear
clear all;
clc;
%%
DH_Modified_new;
assume(Theta,'real');
jacobian_modified_firstmethod;
syms theta1(t) theta2(t) theta3(t) theta4(t) theta5(t) theta6(t) real;

%%% T matrix
T1_0 = transformation(sym(0), sym(0) , P(1), theta1(t));
T2_1 = transformation(-sym(pi/2), sym(0), P(2), -sym(pi/2)+theta2(t));
T3_2 = transformation(sym(0), P(3), sym(0), sym(pi/2)+theta3(t));
T4_3 = transformation(sym(pi/2), sym(0), P(4), theta4(t));
T5_4 = transformation(-sym(pi/2), sym(0), sym(0), theta5(t));
T6_5 = transformation(sym(pi/2), sym(0), sym(0), theta6(t));
T7_6 = [sym(1) sym(0) sym(0) sym(0); sym(0) sym(1) sym(0) sym(0); sym(0) sym(0) sym(1) P(7); sym(0) sym(0) sym(0) sym(1)];

T2_0 = T1_0*T2_1;
T3_0 = T1_0*T2_1*T3_2;
T4_0 = T1_0*T2_1*T3_2*T4_3;
T5_0 = T1_0*T2_1*T3_2*T4_3*T5_4;
T6_0 = T1_0*T2_1*T3_2*T4_3*T5_4*T6_5;
T7_0 = T1_0*T2_1*T3_2*T4_3*T5_4*T6_5*T7_6;
% Jw
%W = syms(zeros(3,1));
R7 = T7_0(1:3, 1:3);
R7_dot = diff(R7, t);
s = R7_dot*transpose(R7);
w = [s(3,2) s(1,3) s(2,1)]';

 theta = [theta1(t) theta2(t) theta3(t) theta4(t) theta5(t) theta6(t)];
 Jw = sym(zeros(3, 6));
%  decoupling coefficients of q1_dot ... q6_dot
 for i=1:3
    for j=1:6
         Jw(i, j) = diff(w(i), diff(theta(j), t));
     end
 end


% Jv
o7 = T7_0(1:3, 4); %% position of end effector accordng to frame 0
v7 = diff(o7, t);
theta = [theta1(t) theta2(t) theta3(t) theta4(t) theta5(t) theta6(t)];
Jv = sym(zeros(3, 6));
%  decoupling coefficients of q1_dot ... q6_dot
for i=1:3
    for j=1:6
        Jv(i, j) = diff(v7(i), diff(theta(j), t));
    end
end

J_direct = [Jv; Jw];
 
Th1 = theta1(t); Th2 = theta2(t); Th3 = theta3(t); Th4 = theta4(t); Th5 = theta5(t); Th6 = theta6(t);
J_alternative = subs(jacobian_endeffector);
% define differences of 2 methods jacobians
J_difference = J_direct - J_alternative;



function DH_Modified = transformation(alphai_1, ai_1, di, thetai)
DH_Modified = [cos(thetai) -sin(thetai) sym(0) ai_1; sin(thetai)*cos(alphai_1) cos(thetai)*cos(alphai_1) -sin(alphai_1) -sin(alphai_1)*di; sin(thetai)*sin(alphai_1) cos(thetai)*sin(alphai_1) cos(alphai_1) cos(alphai_1)*di; sym(0) sym(0) sym(0) sym(1)];
end

