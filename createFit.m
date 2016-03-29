function [fitresult, gof] = createFit(Datein, Fin)
%CREATEFIT2(DATEIN,FIN)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : Datein
%      Y Output: Fin
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 25-Sep-2014 13:30:53

%
% David Willingham, MathWorks
% Copyright 2015 The MathWorks, Inc.
%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( Datein, Fin );

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];
opts.Normalize = 'on';
opts.StartPoint = [19372221.7569992 0.915037287156733 1.54745539797197 7656747.34005366 1.83007457431347 -1.53874307615924 1504808.52192788 3.66014914862693 1.53373225384297 595027.989588154 5.4902237229404 -1.56251558539443 532833.898101152 53.0721626550905 -2.49532500294781 556642.263337423 25.6210440403885 -0.412881140975157];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'Fin vs. Datein', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel( 'Datein' );
ylabel( 'Fin' );
grid on


