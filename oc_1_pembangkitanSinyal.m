clear all; close all; clc
% Secara berturut-turut perintah diatas berfungsi 
% untuk membersikan memory workspace, menutup 
% seluruh jendela grafik yang terbuka, dan 
% membersikan % History Command Window.  

fs = 1000; % [Hz] Frekuensi Sampling
% Merupakan jumlah sample sinyal setiap satu detik. 
% Jika fs = X Hz, maka dalam periode 1 detik terdapat 
% sejumlah X sample dari sinyal.  Frekuensi sampling 
% harus jauh lebih besar dibandingkan dengan frekuensi 
% sinyal yang akan disampling

fx = 3; % [Hz] Frekuensi sinyal.  
% Pada sinyal periodik, frekuensi sinyal menunjukkan 
% jumlah repetisi dari suatu komponen sinyal periodik 
% pada periode dasarnya.  

tmax = 1.5; % [s: second atau detik] durasi sinyal 
            % pada domain waktu
t = 0:1/(fs):tmax;  % Pemetaan durasi sinyal pada sumbu 
% waktu berdasarkan periode samplingnya (yaitu: 1/fs)
% durasi ini dapat menggambarkan durasi waktu dimana 
% suatu sinyal dicuplik

A = 2; % [Volt] Amplitudo sinya
% Merupakan tegangan suatu sinyal dalam volt

%% Pembangkitan sinyal Periodik
% Pembangkitan sinyal sinus
x0 = A*sin(2*pi*fx*t);

%% Menampilkan Grafik Sinyal pada domain waktu
% Batas batas grafik:
sumbu_x_min = 0;
sumbu_x_max = tmax;
sumbu_y_min = -3;
sumbu_y_max = 3;

% Menampilakn grafik
figure(1)
plot(t,x0); 
grid on; axis([sumbu_x_min sumbu_x_max sumbu_y_min sumbu_y_max]);
title('Sinyal Sinusoidal'); 
xlabel('waktu (detik)');ylabel('Amplitudo (V)')

%% Spectrum monitoring
zdouble = fft(x0,1024);
zdouble = abs(zdouble(1:length(zdouble)/2+1));
frqdouble = [0:length(zdouble)-1]*fs/length(zdouble)/2;
figure(4)
plot(frqdouble,zdouble);
grid on; axis([0 50])
