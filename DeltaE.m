function [ D ] = DeltaE( u, v )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
du = exp(u) + v*exp(u*v) + 2*u -2*v -3;
dv = 2*exp(2*v) + u*exp(u*v) -2*u + 4*v -2;

D = [du;dv];

end

