%% DH Function
alpha = pi ;
theta = pi/2 ;
a = 1 ;
d = 2 ;
A = [
     cos(theta) , -1*sin(theta) * cos(alpha)  ,   sin(theta)*sin(alpha)  , a*cos(theta) ;
     sin(theta) ,    cos(theta)*cos(alpha)    , -1*cos(theta)*sin(alpha) , a*sin(theta) ; 
         0      ,        sin(alpha)           ,         cos(alpha)       ,      d       ;
         0      ,            0                ,            0             ,      1
                                                                                         ];



%% DH Matrixes
L = sym("L" , [1 5]);
Theta = sym("Th", [1 6] );

T1_0 = [
        cos(Theta(1)) ,  0 , -1*sin(Theta(1)) ,  0   ;
        sin(Theta(1)) ,  0 ,  cos(Theta(1))   ,  0   ;
              0       , -1 ,        0         , L(1) ;
              0       ,  0 ,        0         ,  1   
                                                      ];

T2_1 = [
        -1*sin(Theta(2))   ,  -1*cos(Theta(2)) , 0 , -1*L(2)*sin(Theta(2))  ;
          cos(Theta(2))    ,  -1*sin(Theta(2)) , 0 ,   L(2)*cos(Theta(2))   ;
                0          ,          0        , 1 ,         -0.35          ;
                0          ,          0        , 0 ,           1   
                                                                             ];
T3_2 = [
        sin(Theta(3)) ,  -1*cos(Theta(3)) ,    cos(Theta(3))    , 0    ;
        cos(Theta(3)) ,          0        ,  -1*sin(Theta(3))   , 0    ;
              0       ,          1        ,           0         , 0    ;
              0       ,          0        ,           0         , 1   
                                                                        ];

T4_3 = [
        cos(Theta(4)) ,  -1*sin(Theta(4)) ,           0         ,  0   ;
        sin(Theta(4)) ,          0        ,     cos(Theta(4))   ,  0   ;
              0       ,         -1        ,           0         , L(4) ;
              0       ,          0        ,           0         ,  1   
                                                                        ];

T5_4 = [
          cos(Theta(5))  ,  0 , -1*sin(Theta(5)) ,  0   ;
        -1*sin(Theta(5)) ,  0 , -1*cos(Theta(1)) ,  0   ;
                0        ,  1 ,        0         , L(5) ;
                0        ,  0 ,        0         ,  1   
                                                         ];
T6_5 = [
          cos(Theta(6)) ,   sin(Theta(6))   ,   0 , 0   ;
          sin(Theta(6)) ,   cos(Theta(6))   ,   0 , 0   ;
               0        ,   0               ,   1 , 0   ;
                0       ,   0               ,   0 , 1   
                                                         ];

T6_0 = T1_0*T2_1*T3_2*T4_3*T5_4*T6_5;




