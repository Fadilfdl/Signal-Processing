clear all; close all; clc

fs = 500; nt = 1;t = 0:1/fs:nt;

rt = randn(1,length(t));
plot(t,rt); grid on;
set(gca,"yaxislocation","origin"); set(gca,"xaxislocation","origin")
set(gca,"box","off"); xlabel("t - detik"); ylabel("r(t) - volt");
title("Contoh Sinyal Acak (Random) terdistribusi normal")


