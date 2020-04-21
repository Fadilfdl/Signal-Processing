clear all; close all; clc

xn = [4 -2 1 0 4];
n1 = -2;
n = n1:1:n1+length(xn)-1;

stem(n,xn,"LineWidth",2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")

xlabel("sampel (n)"); title("x[n]"); grid on
legend('x[n]= \{4,-2,1,0,4\},    n_1=-2')

ylim([min(xn)-1 max(xn)+1])
xlim([min(n)-1 max(n)+1])

