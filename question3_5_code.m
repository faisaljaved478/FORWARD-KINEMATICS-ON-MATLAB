% FAISAL JAVED
% RMC Assignment No.02
% Question 3.5

%L() = Link([theeta d a alpha])
% to define type of joint use jointtype()
% qlim function will give boundries of workspace for respective joint

% Step 1 - Defining Links using DH parameters from figure 

a = 90*pi/180;
L(1) = Link([0 0 0 0],'modified');
L(1).jointtype = 'R';
L(1).qlim = [0 2*pi];

L(2) = Link ([0 0 0 a],'modified');
L(2).jointtype = 'P';
L(2).qlim = [0 20];

L(3) = Link([0 0 0 -a],'modified');
L(3).jointtype = 'R';
L(3).qlim = [0 2*pi];

RPR = SerialLink(L);
RPR.name = 'RPR Robot';
RPR

T = RPR.fkine([30*pi/180 10 0])

%RPR.plot ([a,10,0])
for th1 = 0: 1: a
    RPR.plot ([th1,0,0])
    pause(0.25)
end  
    for d2 = 0: 1: 10 
        RPR.plot ([th1,d2,0])
        pause(0.25)
    end        
for th3 = 0: 1: a
    RPR.plot ([th1,d2,th3])
    pause(0.25) 
end

RPR.teach()