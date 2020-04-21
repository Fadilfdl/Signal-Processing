clear all; close all; clc

xn = [2 3 -1 4]; n1 = 0; n = n1:1:n1+length(xn)-1;

stem(n,xn,"LineWidth",2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")

xlabel("n"); title("x[n]"); grid on
ylim([min(xn)-1 max(xn)+1]); xlim([min(n)-1 max(n)+1]);
legend('x[n] = \{2,3,-1,4\}')

