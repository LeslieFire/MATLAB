function [ G ] = AdaBoostStump( X, y, T )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
    [n, col] = size(X);
    u = ones(n, 1)/n;
    
    global alpha;
    gt = zeros(T,n);
    global sitheta;
    global U;
    for index = 1:T
        %disp(sum(u));
        U(index, :) = u';
        [Ein, s, i, theta] = DecisionStump(X, y, u);
        gtPara = [sum(u); Ein; s; i; theta];
        %disp(gtPara);
        
         %save
        sitheta(index, :) = gtPara';
        
        %save
        g = DecisionStumpFun(s, i, theta, X);
        gt(index, :) =  g';
    
        et = sum(u(g ~= y))/sum(u);
        Squaret = sqrt((1-et)/et);
        ind = find(g ~= y);
        u(ind) = u(ind) * Squaret;
        ind = find(g == y);
        u(ind) = u(ind) / Squaret;
        
        %save
        alpha(index) = log(Squaret);
    end
    G = sign( (alpha' * gt)' );
end

