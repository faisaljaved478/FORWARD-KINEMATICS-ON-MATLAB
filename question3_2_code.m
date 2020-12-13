% FAISAL JAVED
% RMC Assignment No.02
% Question 3.2

%L() = Link([theeta d a alpha])
% to define type of joint use jointtype()
% qlim function will give boundries of workspace for respective joint
% Step 1 - Defining Links using DH parameters from figure 

a = 90*pi/180;
L(1) = Link([0 0 0 0],'modified');
L(1).jointtype = 'R';
L(1).qlim = [0 2*pi];

L(2) = Link([0 0 10 0],'modified');
L(2).jointtype = 'R';
L(2).qlim = [-a a];

L(3) = Link([0 0 20 0],'modified');
L(3).jointtype = 'R';
L(3).qlim = [0 2*pi];
%Step 2 - Combining all links
RRR = SerialLink(L);
RRR.name = 'RRR Robot';
RRR

%Step 3- Calculating position of robot using forward kinematics
T = RRR.fkine([30*pi/180 20*pi/180 0])

%Step 4 - Plotting the robot

for th3 = 0: 0.1: a
    RRR.plot ([0,0,th3])
    pause(0.25)
end  
    for th2 = 0: 0.5: a 
        RRR.plot ([0,th2,0])
        pause(0.25)
    end        
        for th1 = 0: 0.5: a
             RRR.plot ([th1,th2,th3])
             pause(0.25)
        end
  
%r.plot([0,0,0])

RRR.teach()
