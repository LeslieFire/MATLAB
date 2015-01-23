function [ E ] = Efunction( u, v )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明

E = exp(u) + exp(2 * v) + exp(u*v) + u^2 - 2*u*v + 2*v^2 -3*u -2*v;

end

