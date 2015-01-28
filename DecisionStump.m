function [ Ein, sign_index, feature_index, theta ] = DecisionStump( inX, iny, u )
%DecisionStump 此处显示有关此函数的摘要
%   此处显示详细说明
    [row, col] = size(inX);
    s = [-1; 1];
    
    sign_index = 0;
    feature_index = 1;
    theta = -inf;
    Ein = 1;
    g = zeros(row, 1);
    
    Data = [inX, iny];
    for i = 1: col
        orderi = sortrows(Data, i);
        X = orderi(:, i);
        y = orderi(:, col + 1);
        thetaVec = midpoint(X);
        
        for k = 1:row
            tempSign = s(1);
            gs = DecisionStumpFun( s(1), i, thetaVec(k), orderi);
            Eini = ZeroOneErrorStump(gs, y, u);
            gs = DecisionStumpFun( s(2), i, thetaVec(k), orderi);
            Eini2 = ZeroOneErrorStump(gs, y, u);
            
            if (Eini > Eini2)
               Eini = Eini2;
               tempSign = s(2);
            end
            if (Eini < Ein)
               Ein = Eini;
               %g = gs;
               sign_index = tempSign;
               theta = thetaVec(k);
               if (feature_index ~= i)
                   feature_index = i;
               end
            end
        end
    end
    
end

function [ Ein ] = ZeroOneErrorStump( g, y, u )
    
    Ein = sum(u(find(g ~= y)));
end
