clear all; close all; clc
clf; 
fs = 1000;

t1 = linspace(-2,10,fs);
xt = 1.5*exp(-1.5*(t1-0.6));
for nt = 1:1:length(t1)
   if(t1(nt)<0.6)
      xt(nt) = xt(nt)*0;
   end
end


plot(t1,xt,'LineWidth',2);grid on
set(gca,"xaxislocation","origin")
set(gca,"yaxislocation","origin")
set(gca,"box","off")
xlabel("Sumbu x");
ylabel("Sumbu y");

t2 = linspace(-2,10,fs);
xt2 = 2.*exp(-t2).*cos(2*pi*1.25*t2);
for nt2 = 1:1:length(t1)
   if(t2(nt2)<0.2)
      xt2(nt2) = xt2(nt2)*0;
   end
end
figure(2)
plot(t2,xt2,'LineWidth',2);grid on
set(gca,"xaxislocation","origin")
set(gca,"yaxislocation","origin")
set(gca,"box","off")
xlabel("Sumbu x");
ylabel("Sumbu y");
