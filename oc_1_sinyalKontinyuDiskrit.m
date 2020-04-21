clear all; close all; clc
A = 5;  % [Volt] Amplitudo sinyal
F = 1;   % [Hz] Frekuensi sinyal
fs = 100; % Frekuensi sampling
durasi = 1; t = 0:1/fs:durasi; t2 = 0:10/fs:durasi;

vt = A*sin(2*pi*F*t); % Representasi Sinyal waktu-kontinyu
vt2 = A*sin(2*pi*F*t2); % Representasi SInyal waktu-Diskrit

subplot(2,1,1); plot(t,vt); 
title("(a). Contoh Sinyal waktu-kontinyu"); set(gca,"box","off")
set(gca,"yaxislocation","origin"); set(gca,"xaxislocation","origin")
xlabel("t - detik"); ylabel("v(t) - volt"); grid on

subplot(2,1,2); stem(t2,vt2);
title("(b). Contoh Sinyal waktu-diskrit"); set(gca,"box","off")
set(gca,"yaxislocation","origin"); set(gca,"xaxislocation","origin")
xlabel("t - waktu"); ylabel("v(t) - volt"); grid on
