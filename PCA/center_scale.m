function y = center_scale(x)
%CENTER_SCALE on matrix data
%     [y] = center_scale(x) returns a matrix centralized 
%     and scaled. The y matrix is the x, but with zero mean
%     and one of standart deviation.
%

% Measure Standart Deviation
    x_std=std(x);
% Measure the mean
    x_mean=mean(x);    
% Matrix with zeros, same size of x's matrix
n = size(x,2);
y = x.*0;
%
for ii=1:n
   y(:,ii)=(x(:,ii) - x_mean(ii))/x_std(ii);
end 
end