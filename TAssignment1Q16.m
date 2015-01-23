function [ Ein, sumAlpha ] = TAssignment1Q16( label, inst, n)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    indice = label == n;
    lv = label;
    lv(indice) = 1;
    lv(~indice) = -1;
    
    model = libsvmtrain(lv, inst, '-h 0 -c 0.01 -s 0 -t 1 -d 2');
    alpha = model.sv_coef ./ lv(model.sv_indices);
    sumAlpha = sum(alpha);
        
    [predicted_label] = libsvmpredict(lv, inst, model);
    
    % 0 1 error
    n = 0;
    row = length(predicted_label);
    for i = 1:row
        if (lv(i) ~= predicted_label(i)) n = n+1;
    end
    Ein = n / row;
end

