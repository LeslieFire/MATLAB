function [ Ein ] = Assignment3Q13( times )
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明

Ein = 0;
for i = 1:times
   X = [ones(1000, 1), 2*rand(1000,2)-1];
   y = sign(X(:,2).^2 + X(:,3).^2 -0.6);
   noise_int = randperm(1000);
   n_index = noise_int(1:round(0.1*1000));
   y(n_index) = y(n_index).*-1;
   wLIN = pinv(X)*y;
   e = zeroOneError(X, y, wLIN);
   %disp(e);
   Ein = Ein + e;
end
   
Ein = Ein / times;

end

