function [fitresult, gof] = createFit(IndexRet, SZ02)
%CREATEFIT(INDEXRET,SZ02)
%  Create a fit.
%
%  Data for 'BetaPlot' fit:
%      X Input : IndexRet
%      Y Output: SZ02
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 25-Dec-2012 17:17:24


%% Fit: 'BetaPlot'.
[xData, yData] = prepareCurveData( IndexRet, SZ02 );

% Set up fittype and options.
ft = fittype( 'poly1' );
opts = fitoptions( ft );
opts.Lower = [-Inf -Inf];
opts.Upper = [Inf Inf];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'BetaPlot' );
h = plot( fitresult, xData, yData );
legend( h, 'SZ02 vs. IndexRet', 'BetaPlot', 'Location', 'SouthEast' );
% Label axes
xlabel( 'IndexRet' );
ylabel( 'SZ02' );
s=['beta=',num2str(fitresult.p1)];
text(0,0,s)
grid on


