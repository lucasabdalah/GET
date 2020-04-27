function XNormalized = center_scale(X)
% Computes z-score data normalization (and standardization) of input signal(s)
%
% SYNTAX: XNormalized = center_scale(X);
%
%         XNormalized : input signals with zero mean and std one
%
%         X  : input signals (one signal per row, one sample per column).
%
% HISTORY:
%
% 2019/04/30: - created by Lucas Abdalah.

X_std=std(X,0,2); % Standart Deviation by rows

if X_std <= eps & X_std >= -eps
  error("Stardand Deviation should not be zero");
end

X_mean=mean(X,2); % Mean by rows
XNormalized = X - X_mean; % Shift the samples to the zero mean

numLines = size(X,1); % Upper limit in the loop

for indexLines=1:numLines
   XNormalized(indexLines,:) = ...
    XNormalized(indexLines,:)/X_std(indexLines,:);
    % Divide each elemments for its line std
end

end
