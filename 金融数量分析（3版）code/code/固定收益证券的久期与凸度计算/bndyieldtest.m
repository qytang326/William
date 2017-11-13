%表面利率都为5%
CouponRate=0.05;
%交割日为1997-1-20
Settle='20-Jan-1997'
%到期日为2002-6-15
Maturity='15-Jun-2002'
%利息分配为一年两次
Period=2;
%计息方式为（实际值／实际值）
Basis=0;
%债券价格为(列向量） 
%债券价格为60到140，间个为0.1元 
Price=60:0.1:140;
%行向量转为列向量
Price=Price';
%调用bndyield函数
Yield=bndyield(Price,CouponRate,Settle,Maturity,Period,Basis);
%画图
plot(Price,Yield,'.-');
xlabel('Price')
ylabel('Yield')
title('FixIncome Price-Yield')
