function [ w ] = Assignment3Q14(times)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

w = zeros(6,1);

for i=1:times
   FX = [ones(1000, 1), 2*rand(1000,2)-1];
   X = [FX, FX(:,2).*FX(:,3), FX(:,2).^2, FX(:,3).^2];
   
   y = sign(X(:,2).^2 + X(:,3).^2 -0.6);
   noise_int = randperm(1000);
   n_index = noise_int(1:round(0.1*1000));
   y(n_index) = y(n_index).*-1;
   
   w = w + pinv(X)*y;
end
w = w/times;
end

