% FAISAL JAVED
% RMC Assignment No.02
% Question 3.4

%L() = Link([theeta d a alpha])
% to define type of joint use jointtype()
% qlim function will give boundries of workspace for respective joint

% Step 1 - Defining Links using DH parameters from figure 

a = 90*pi/180;
L(1) = Link([0 0 0 0],'modified');
L(1).jointtype = 'R';
L(1).qlim = [0 2*pi];

L(2) = Link ([0 0 0 -a],'modified');
L(2).jointtype = 'P';
L(2).qlim = [0 20];
RP = SerialLink(L);
RP.name = 'RP Robot';
RP

T = RP.fkine([0 10])

%RP.plot ([a,10])
for th1 = 0: 1: a
    RP.plot ([th1,0])
    pause(0.25)
end  
    for d2 = 0: 1: 10 
        RP.plot ([th1,d2])
        pause(0.25)
    end        
        
RP.teach()