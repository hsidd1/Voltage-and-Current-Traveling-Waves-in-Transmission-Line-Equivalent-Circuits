% Hamza Siddiqui - siddih38 - 400407170 
clear all; close all %#ok<CLALL> reset everything

% Defining PUL parameter values
R = 13.5;     % resistance PUL  (Ω/m)
L = 322e-9;   % inductance PUL  (H/m) 
G = 0.77e-3;  % conductance PUL (S/m)
C = 129e-12;  % capacitance PUL (F/m)

f = 1e9;      %1 /T frequency
w = f*2*pi;
gamma = sqrt((R+1i*w*L)*(G+1i*w*C)); % complex propagation constant 

phase_constant = imag(gamma);        % beta
vp = w/phase_constant;              % phase velocity 

disp(vp)
