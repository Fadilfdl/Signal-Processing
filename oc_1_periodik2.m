clear all; close all; clc

n = -2:1:1; sample_spacing = 0.1;
I = 5; % Jumlah perulangan periodik
All = I*length(n); 

xn = [];
for i = 1:length(n)
  if(n(i)<0) xn(i) = -n(i); else xn(i) = n(i); end
end


subplot(2,1,1); stem(n,xn,"LineWidth",2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")
title("(a). x_p[n]");xlabel("n"); grid on
ylim([min(xn)-1 max(xn)+1]); xlim([-(All/2) (All/2)-1])

xna = [];na = [];
for i2=1:I
  for i3 = 1:length(xn) xna(i3,i2) = xn(i3);na(i3,i2) = n(i3);
end end

A = []; mid = ceil(I/2);
for i = 1:mid-1
    na(:,(mid-i)) = na(:,(mid-i+1))-length(n);
    na(:,(mid+i)) = na(:,(mid+i-1))+length(n); 
end

xna_a = reshape(xna,1,All); na_a = reshape(na,1,All);
na_t = na_a*sample_spacing;

subplot(2,1,2)
stem(na_t,xna_a,"LineWidth",2); set(gca,"box","off")
set(gca,"yaxislocation","origin");set(gca,"xaxislocation","origin")
title("(b). x[n], sample spacing 0.1 detik"); xlabel("t"); grid on
ylim([min(xna_a)-1 max(xna_a)+1]); 
xlim([min(na_t)-sample_spacing max(na_t)+sample_spacing]);
