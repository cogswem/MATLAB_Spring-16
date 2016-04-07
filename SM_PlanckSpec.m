%Planck Blackbody Spectrum 
%Maddie C. 
%4/5/2016 
% 
T=5800;                     %Surface temperature of sun(K) 
k=1.38e-23;                 %Boltzmann's constant (eV/K) 
h=6.626e-34;                %Planck's constant (eV*s) 
c=2.99e8;                   %Speed of light (m/s) 
L=1;                        %dimension (m)             
n=1:1000:10000000;          %Quantum energy level 
p=(h*c*n)./(2*L);           %Energy of photon(J)                
N=8*pi*(k*T).^4./((h*c).^3); %Normalization constant 
x=p./(k*T);                 %sub x 
y=N*(x.^3)./(exp(x)-1);     %Total energyplot(x,y) 
plot(x,y)  
title('Blackbody Spectrum') 
xlabel('Photon Energy/KbT'),ylabel('Energy density') 
