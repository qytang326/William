%%
x=[1 2 3 4 5];
y=[5.6 40 150 250 498.9];
p=polyfit(x,y,1)
%%
x2=1:0.1:5;
y2=polyval(p,x2);
plot(x,y,'*',x2,y2);
%%
x=[1 2 3 4 5];
y=[5.6 40 150 250 498.9];
p=polyfit(x,y,3)
%%
x2=1:0.1:5;
y2=polyval(p,x2);
plot(x,y,'*',x2,y2);
%%
CFTOOL

