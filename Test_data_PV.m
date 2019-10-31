
[A] = data1();
y=A(:,1); % P kwt teq1
%y=A(:,2); % puissance kwt teq2
%y=A(:,3); % P kwt teq3
x1=A(:,6);% Irrad In
x2=A(:,7);% Irrad H
x3=A(:,8);% Temp
%size(A)
% B(:,1)=[];
% B(:,2)=[];
  % x =x1+x2+x3;
%  [r,m,b] = regression(x,y);
%  plotregression(x,y)
  %  tbl = table(y,x1,x2,x3,'VariableNames',{'y','Irrad In','Irrad H','Temp'});
 %lm = fitlm(tbl,'y~x1+x2+x3')
%  X(:,1)=x1;
%  X(:,2)=x2;
%  X(:,3)=x3;
X = [x1,x2,x3];
 %model nonlinear
%  modelfun = @(b,X) b(1) + b(2)*X(:,1).^b(3) + ...
%      b(4)*X(:,2).^b(5)+b(6)*X(:,3);%+b(7)*x(:,3).^2+b(8)*x(:,3).^3
% beta0 = [-50 500 -1 500 -1 -1 ];%10 10
%model linear
%  modelfun = @(b,X) b(1) + b(2)*X(:,1) + ...
%      b(3)*X(:,2)+b(4)*X(:,3);
%  beta0 = 10*ones(1,4);
%mdl = fitnlm(X,y,modelfun,beta0)
lm = fitlm(X,y)
plotSlice(lm)
%plotResiduals(lm)
%plotSlice(mdl)
%[~,maxl] = max(mdl.Diagnostics.Leverage)
%plotResiduals(mdl)