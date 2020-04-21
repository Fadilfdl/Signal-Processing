clear all; close all; clc

n = -3:3; xn = [];
for i = 1:length(n)
  if(n(i)<0) xn(i) = 4+n(i); 
  else xn(i) = 1; end
end
stem(n,xn,"LineWidth",2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")

xlabel("n"); title("x[n]"); grid on
ylim([min(xn)-1 max(xn)+1]);xlim([min(n)-1 max(n)+1])