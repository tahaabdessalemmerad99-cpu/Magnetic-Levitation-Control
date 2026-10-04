clc
clear all
%PI
Alpha=0.7;
D=0.7;
T1=0.075;    
T2=0.0002; 
K=4.7;  
Tt=0.0005;  %Traking time for PI
Ts=100e-6;  %Sampling time
W0=2387.65;
Kp=33.64;
Ki=28575.5;
Ti=(K*Kp)/(Alpha*(W0^3)*T1*T2);
%---------------------------------PID
ALPHAA=1;
DD=1;
W00=50;
Tf=2^0.5/500;
Kpp=(((1+(2*ALPHAA*DD))*(W00^2))+872)/0.654;
Kii=(ALPHAA*(W00^3))/0.654;
Kd=((ALPHAA+(2*DD))*W00)/0.654;
Tt2=((Kii/Kpp)*(Kd/Kpp))^0.5;  %Traking time for PID
Tlaser=1/(2*pi*2500);
FLT=tf(1,[Tf^2/2,Tf,1]);
FLTDSC=c2d(FLT,Ts,'Tustin');
