% Hamza Siddiqui - siddih38 - 400407170 
clear all; close all %#ok<CLALL> reset everything

% Defining PUL parameter values
R = 1.35; % resistance PUL  (Ω/m)
L = 322;  % inductance PUL  (H/m)
G = 0.77; % conductance PUL (S/m)
C = 129;  % capacitance PUL (F/m)

f = 10^9:10^6:10^10; % frequency vector 1 GHz to 10 GHz (with a step of 10 MHz)
w = f.*(2*pi);
gamma = sqrt((R+1i*w*L).*(G+1i*w*C)); % complex propagation constant 
Z0 = sqrt((R+1i*w*L)./(G+1i*w*C));    % characteristic impedance (voltage-to-current ratio for a traveling wave in a TL)

% values to be plotted 
attenuation_constant = real(gamma); % alpha
phase_constant = imag(gamma);       % beta
vp = w./phase_constant;              % phase velocity 
% real and imaginary parts of characteristic impedance
ReZ0 = real(Z0);
ImZ0 = imag(Z0);

% attenuation constant plot
subplot(5,1,1);
plot(f,attenuation_constant);
title('Attenuation Constant against Frequency');
xlabel('Frequency (Hz)');
ylabel('Attenuation Constant (rad)'); 

% phase constant plot
subplot(5,1,2);
plot(f, phase_constant);
title('Phase constant against Frequency');
xlabel('Frequency (Hz)'); 
ylabel("Phase Constant (rad)");

% phase velocity plot
subplot(5,1,3);
plot(f,vp);
title('Phase Velocity against Frequency');
xlabel('Frequency (Hz)'); 
ylabel('Phase Velocity (m/s)');

% real part of characteristic impedance plot
subplot(5,1,4);
plot(f, ReZ0);
title('Real Part of Characteristic Impedance against Frequency');
xlabel('Frequency (Hz)'); 
ylabel('Real Part of Characteristic Impedance (Ohms)');

% imaginary Part of Characteristic Impedance plot
subplot(5,1,5);
plot(f, ImZ0);
title('Imaginary Part of Characteristic Impedance against Frequency');
xlabel('Frequency (Hz)'); 
ylabel('Imaginary Part of Characteristic Impedance (Ohms)');