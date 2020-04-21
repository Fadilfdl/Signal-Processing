clear all; close all; clc
A = 110;  % [Volt] Amplitudo sinyal
F = 50;   % [Hz] Frekuensi sinyal
fs = 500; % Frekuensi sampling
nt = 1;
t = 0:1/fs:nt;

vt = A*cos(2*pi*F*t);
plot(t,vt);
set(gca,"yaxislocation","origin")
set(gca,"xaxislocation","origin")
set(gca,"box","off")
title("Contoh Sinyal Listrik")
xlabel("t - detik");
ylabel("v(t) - volt");
grid on