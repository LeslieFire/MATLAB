function [ ] = TAssignment2Q13( T )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    
    global train test;
    
    X_tra = train(:, 1:2);
    y_tra = train(:, 3);
    X_tes = test(:, 1:2);
    y_tes = test(:, 3);
    
    G = AdaBoostStump(X_tra, y_tra, T);
    
    e = zeroOneError(G, y_tra);
    disp(e);
end

