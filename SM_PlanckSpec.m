%Planck Spectrum
%Energy(y) distribution as a function of photon energy(x), at temperature 1500K.
%Maddie C.
%4/6/2016
%
T=1500;                     %Temperature of kiln (K)
k=1.38e-23;                 %Boltzmann's constant (eV/K)
h=6.626e-34;                %Planck's constant (eV*s)
c=2.99e8;                   %Speed of light (m/s)
L=1;                        %dimension (m)            
n=1:1000:10000000;          %Quantum energy level
p=(h*c*n)./(2*L);           %Energy of photon spectrum (J)               
N=8*pi*(k*T).^4./((h*c).^3) %Normalization constant
x=p./(k*T);                 %sub x
y=N*(x.^3)./(exp(x)-1);     %Total energyplot(x,y)
plot(x,y)
axis([0 20 0 .001])
