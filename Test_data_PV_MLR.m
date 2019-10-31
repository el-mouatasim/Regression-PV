clear all;
close all;
[A] = data1exact();
%A = A(1:2:78,:); %R=0.919
y1=A(:,4); % Power kwt poly
y2=A(:,5); % power kwt amorphe
y3=A(:,6); % Power kwt mono
y=y1;%y2 y3
x1=A(:,1);% Irrad In
x2=A(:,2);% Irrad H
x3=A(:,3);% Temp
%

   %[r,m,b] = regression(x,y);
   %%SLR
%    x=x1+x2;
%    plotregression(x,y)
%% MLR
 X(:,1)=x1;
 X(:,2)=x2;
 X(:,3)=x3;
 X = [x1,x2,x3];
 lm = fitlm(X,y)
% plotSlice(lm)
%plotResiduals(lm)
%plotSlice(mdl)
%[~,maxl] = max(mdl.Diagnostics.Leverage)
%plotResiduals(mdl)