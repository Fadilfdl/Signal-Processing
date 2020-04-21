clear all; close all; clc
fs = 100; t = -2:1/fs:2;

xt = [];
for i = 1:length(t)
  if(t(i)<0) xt(i) = e.^(2*t(i)); else xt(i) = 0.5*e.^(-t(i));
  end
end

plot(t,xt,"LineWidth",2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")
title('x(t)');xlabel("t"); ylabel(""); grid on
ylim([min(xt)-1 max(xt)+1]); xlim([min(t)-1 max(t)+1])

