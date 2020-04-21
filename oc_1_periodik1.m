clear all; close all; clc
fs = 100; t = -0.25:1/fs:0.25;

xt = e.^(1.5*t);

l=length(xt);n = 11;xta = [];
for i=1:n for i2 = 1:l xta(i2,i) = xt(i2);end end 
xtall = reshape(xta,1,n*l);
t2 = []; t2(i) = 0;
for i3 = 2:length(xtall) t2(i3) = t2(i3-1)+(1/fs); end
l2 = length(t2); t3_i = round(l2/2); t3 = [];
for i3 = 1:l2 t3(i3) = t2(i3)-t2(t3_i); end

subplot(2,1,1); plot(t,xt,'LineWidth',2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")
xlabel("t (detik)"); title('(a). x_p(t)'); grid on
ylim([min(xtall)-1 max(xtall)+1]); xlim([min(t)-1 max(t)+1])

subplot(2,1,2);plot(t3,xtall,'LineWidth',2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")
xlabel("t (detik)"); title("(b). x(t)"); grid on
ylim([min(xtall)-1 max(xtall)+1]); xlim([min(t)-1 max(t)+1]);