% FAISAL JAVED
% RMC Assignment No.02
% Question 3.3

%L() = Link([theeta d a alpha])
% to define type of joint use jointtype()
% qlim function will give boundries of workspace for respective joint
% Step 1 - Defining Links using DH parameters from figure 

L(1) = Link([0 0 0 0],'modified');
L(1).jointtype = 'P';
L(1).qlim = [0 20];

L(2) = Link ([0 0 0 -90*pi/180],'modified');
L(2).jointtype = 'P';
L(2).qlim = [0 20];
PProbot = SerialLink(L);
PProbot.name = '2P Robot';
PProbot

T = PProbot.fkine([10 10])


%r.plot ([10,10])
for d1 = 0: 1: 10
    PProbot.plot ([d1,0])
    pause(0.25)
end  
    for d2 = 0: 1: 10 
        PProbot.plot ([d1,d2])
        pause(0.25)
    end        
        

PProbot.teach()