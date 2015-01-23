function [ alpha ] = KernelHardMarginSVM( X, y, K)
%KernelHardMarginSVM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [row, col] = size(X);
    Q = QD(X, y, K);
    p = -1 * ones(row, 1);
    A = -eye(row);
    b = zeros(row,1);
    lb = zeros(row, 1);
    ub = 0.01;
    Aeq = y';
    beq = 0;
    %alpha = quadprog(Q, p, A, b, Aeq, beq);
    alpha = quadprog(Q, p, [], [], Aeq, beq, lb, ub);

end

function [ Q ] = QD( X, y, K)
%KernelHardMarginSVM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [row, col] = size(X);
    Q = zeros(row);
    for n = 1:row
       for m = 1:row
           Q(n,m) =y(n)*y(m)*K(X(n,:), X(m,:)); 
       end
    end
    %print(Q);
end

