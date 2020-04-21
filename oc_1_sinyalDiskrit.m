clear all; close all; clc

fs = 100;
t1 = -0.3:1/fs:0.3;
x = 1.25*t1+7.5;

for i=1:1:length(t1)
if(t1(i)<2)
  x(i) = 10;
elseif(t1(i)>10)
  x(i) = 20;
end  
  
end

plot(t1,x,'LineWidth',2)
set(gca,"yaxislocation","origin")
set(gca,"xaxislocation","origin")
set(gca,"box","off")
xlabel("t");
ylabel("x(t)");
grid on

ylim([0 30])
yticks([0 10 20])
yticklabels({'0','10','20'})
xticks([-12:2:12])

