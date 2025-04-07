%% LICENSE CC BY 4.0 -- Creative Commons Attribution 4.0 International
%--------------------------------------------------------------------------
% Permits almost any use subject to providing credit and license notice.
% Please inform the author before publishing in third party resources 
% giovanni.bonanno@unipd.it
%--------------------------------------------------------------------------

%% Common Parameters for SIMULINK
fs          = 100e3;             % Steady-State switching/modulating frequency
Ts          = 1/fs;              % Steady-State modulating period
fsample     = 2*fs;              % Sampling frequency for the modulating signal
Tsample     = 1/fsample;         % Sampling Period
Tsim        = 8000*Ts;           % Simulating Time           
MaxStep     = Ts/600;            % Maximum Step Size (Solver)
MinStep     = MaxStep/20;        % Minimum Step Size (Solver)

%% Parameters for the eDPWM
a           = 1;            % named alpha in [1] 
b           = 1;            % named beta in  [1]
% In [3] a = b = 1.
M           = 0.3;          % Operating Point
NL          = 0;            % Lower Threshold Value
NH          = 1;            % Upper Threshold Value
Default_NL  = 0;            % default value
Default_NH  = 1;            % default value
             
PgnH        = 1/20;         % PLL gain for the ext-synch mode
PgnL        = 1/2;          % PLL gain for the ext-synch mode

% for fsample = fs please refer to [4], for fsample = N fs with N>2 please refer to [2]
%% References
% [1]
% G. Bonanno, A. Comacchio, P. Mattavelli and M. Corradin,
% "Asymmetric Dual-Edge Digital Pulsewidth Modulator With an Intrinsic Derivative Action,"
% in IEEE Transactions on Power Electronics, vol. 38, no. 1, pp. 304-315, Jan. 2023, doi: 10.1109/TPEL.2022.3204413.

% [2] -- IEEE Open Source Transactions on Power Electronics
% G. Bonanno, A. Comacchio and P. Mattavelli,
% "Multisampling Digital Pulse-Width Modulator Based on Asymmetric Dual-Edge Carrier,"
% in IEEE Transactions on Power Electronics, vol. 39, no. 5, pp. 5121-5134, May 2024, doi: 10.1109/TPEL.2024.3354298. 

% [3] -- IEEE Open Journal of Power Electronics
% R. Cvetanovic, G. Bonanno, A. Comacchio, H. Abedini, D. Biadene and P. Mattavelli,
% "High Frequency Passivity Properties of Grid-Connected Admittance With Double-Sampling Asymmetric Dual-Edge Modulator,"
% in IEEE Open Journal of Power Electronics, vol. 3, pp. 856-865, 2022, doi: 10.1109/OJPEL.2022.3221217.

% [4]
% A. Comacchio, G. Bonanno, H. Abedini, P. Mattavelli and M. Corradin,
% "Asymmetric Digital Dual-Edge Modulator for Dynamic Performance Improvement of Multiloop-Controlled VSI,"
% in IEEE Transactions on Industrial Electronics, vol. 70, no. 5, pp. 4662-4671, May 2023, doi: 10.1109/TIE.2022.3187586. 
