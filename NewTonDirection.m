function [ D ] = NewTonDirection( u, v )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明

du = exp(u) + v*exp(u*v) + 2*u -2*v -3;
dv = 2*exp(2*v) + u*exp(u*v) -2*u + 4*v -2;

ux = -1*du / (exp(u) + 4*exp(2*v) + (u^2 + v^2 + 2 + 2*u*v)*exp(u*v) + 2);
vx = -1*dv / (exp(u) + 4*exp(2*v) + (u^2 + v^2 + 2 + 2*u*v)*exp(u*v) + 2);

D = [ux; vx];
%[ux, vx] = -1*[du, dv] / (exp(u) + 4*exp(2*v) + (u^2 + v^2 + 2 + 2*u*v)*exp(u*v) + 2);
%disp(ux);
%disp(vx);
end

