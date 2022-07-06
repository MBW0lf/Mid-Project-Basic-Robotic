DH_Modified_new;
P1 = 320; P2 = 35; P3 = 225; P4 = 225; P7 = 65;

% initialize theta parameters
theta1 = linspace(-180, 180, 3)*pi/180;
theta2 = linspace(-215, 35, 3)*pi/180;
theta3 = linspace(-48, 228, 3)*pi/180;
theta4 = linspace(-270, 270, 3)*pi/180;
theta5 = linspace(-120, 133.5, 3)*pi/180;
theta6 = linspace(-270, 270, 3)*pi/180;

ct=1;

for i=1:length(theta1)
    T1 = theta1(i);
    for j=1:length(theta2)
        T2 = theta2(j);
        for k=1:length(theta3)
            T3 = theta3(k);
            for m=1:length(theta4)
                T4 = theta4(m);
                for n=1:length(theta5)
                    T5 = theta5(n);
                    for q=1:length(theta6)
                        T6 = theta6(q);
                        Th1 = T1; Th2 = T2; Th3 = T3; Th4 = T4; Th5 = T5; Th6 = T6;
                        
%                         x1_sym = T1_0(1, 4); y1_sym = T1_0(2,4); z1_sym = T1_0(3,4);
%                         x2_sym = x1_sym + T2_1(1, 4); y2_sym = y1_sym + T2_1(2, 4); z2_sym = z1_sym + T2_1(3, 4);
%                         x3_sym = x2_sym + T3_2(1, 4); y3_sym = y2_sym + T3_2(2, 4); z3_sym = z2_sym + T3_2(3, 4);
%                         x4_sym = x3_sym + T4_3(1, 4); y4_sym = y3_sym + T4_3(2, 4); z4_sym = z3_sym + T4_3(3, 4);
%                         x5_sym = x4_sym + T5_4(1, 4); y5_sym = y4_sym + T5_4(2, 4); z5_sym = z4_sym + T5_4(3, 4);
%                         x6_sym = x5_sym + T6_5(1, 4); y6_sym = y5_sym + T6_5(2, 4); z6_sym = z5_sym + T6_5(3, 4);
%                         x7_sym = x6_sym + T7_6(1, 4); y7_sym = y6_sym + T7_6(2, 4); z7_sym = z6_sym + T7_6(3, 4);                        
  
%                         x1_sym = T1_0(1, 4); y1_sym = T1_0(2,4); z1_sym = T1_0(3,4);
%                         x2_sym = x1_sym + T2_0(1, 4); y2_sym = y1_sym + T2_0(2, 4); z2_sym = z1_sym + T2_0(3, 4);
%                         x3_sym = x2_sym + T3_0(1, 4); y3_sym = y2_sym + T3_0(2, 4); z3_sym = z2_sym + T3_0(3, 4);
%                         x4_sym = x3_sym + T4_0(1, 4); y4_sym = y3_sym + T4_0(2, 4); z4_sym = z3_sym + T4_0(3, 4);
%                         x5_sym = x4_sym + T5_0(1, 4); y5_sym = y4_sym + T5_0(2, 4); z5_sym = z4_sym + T5_0(3, 4);
%                         x6_sym = x5_sym + T6_0(1, 4); y6_sym = y5_sym + T6_0(2, 4); z6_sym = z5_sym + T6_0(3, 4);
%                         x7_sym = x6_sym + T7_0(1, 4); y7_sym = y6_sym + T7_0(2, 4); z7_sym = z6_sym + T7_0(3, 4); 

                        x1_sym = T1_0(1, 4); y1_sym = T1_0(2,4); z1_sym = T1_0(3,4);
                        x2_sym = x1_sym + (T2_0(1, 4) - T1_0(1,4)); y2_sym = y1_sym + (T2_0(2, 4) - T1_0(2,4)); z2_sym = z1_sym + (T2_0(3, 4) - T1_0(3,4));
                        x3_sym = x2_sym + (T3_0(1, 4) - T2_0(1,4)); y3_sym = y2_sym + (T3_0(2, 4) - T2_0(2,4)); z3_sym = z2_sym + (T3_0(3, 4) - T2_0(3,4));
                        x4_sym = x3_sym + (T4_0(1, 4) - T3_0(1,4)); y4_sym = y3_sym + (T4_0(2, 4) - T3_0(2,4)); z4_sym = z3_sym + (T4_0(3, 4) - T3_0(3,4));
                        x5_sym = x4_sym + (T5_0(1, 4) - T4_0(1,4)); y5_sym = y4_sym + (T5_0(2, 4) - T4_0(2,4)); z5_sym = z4_sym + (T5_0(3, 4) - T4_0(3,4));
                        x6_sym = x5_sym + (T6_0(1, 4) - T5_0(1,4)); y6_sym = y5_sym + (T6_0(2, 4) - T5_0(2,4)); z6_sym = z5_sym + (T6_0(3, 4) - T5_0(3,4));
                        x7_sym = x6_sym + (T7_0(1, 4) - T6_0(1,4)); y7_sym = y6_sym + (T7_0(2, 4) - T6_0(2,4)); z7_sym = z6_sym + (T7_0(3, 4) - T6_0(3,4)); 


                        x1 = subs(x1_sym); y1 = subs(y1_sym); z1 = subs(z1_sym);
                        x2 = subs(x2_sym); y2 = subs(y2_sym); z2 = subs(z2_sym);
                        x3 = subs(x3_sym); y3 = subs(y3_sym); z3 = subs(z3_sym);
                        x4 = subs(x4_sym); y4 = subs(y4_sym); z4 = subs(z4_sym);
                        x5 = subs(x5_sym); y5 = subs(y5_sym); z5 = subs(z5_sym);
                        x6 = subs(x6_sym); y6 = subs(y6_sym); z6 = subs(z6_sym);
                        x7 = subs(x1_sym); y7 = subs(y1_sym); z7 = subs(z7_sym);
                        x0 = 0;             y0 = 0;             z0 = 0;
                        x1 = double(x1);    y1 = double(y1);    z1 = double(z1);
                        x2 = double(x2);    y2 = double(y2);    z2 = double(z2);
                        x3 = double(x3);    y3 = double(y3);    z3 = double(z3);
                        x4 = double(x4);    y4 = double(y4);    z4 = double(z4);
                        x5 = double(x5);    y5 = double(y5);    z5 = double(z5);
                        x6 = double(x6);    y6 = double(y6);    z6 = double(z6);
                        x7 = double(x7);    y7 = double(y7);    z7 = double(z7);
                        
                        plot3([x0 x1],[y0 y1],[z0 z1],[x1 x2],[y1 y2],[z1 z2],[x2 x3],[y2 y3],[z2 z3],[x3 x4],[y3 y4],[z3 z4],[x4 x5],[y4 y5],[z4 z5],[x5 x6],[y5 y6],[z5 z6],[x6 x7],[y6 y7],[z6 z7],'linewidth',6);
                        %view(90,0);
                        axis([-500 500 -500 500 -200 820]);
                        %pause(0.05) ;
                        M(ct)=getframe(gcf)
                        ct=ct+1
%                         F = getframe ;

               

                    end
                end
            end
        end
    end
end
movie(M)
videofile=VideoWriter('robot.avi','uncompressed AVI')
open(videofile)
writeVideo(videofile,M)
close(videofile)

%movie(F)