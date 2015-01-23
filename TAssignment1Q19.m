function [ Eout ] = TAssignment1Q19( label, inst, test_label, test_inst)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    indice = (label == 0);
    lv = label;
    lv(indice) = 1;
    lv(~indice) = -1;
    
    model = libsvmtrain(lv, inst, '-h 0 -c 0.1 -s 0 -t 2 -d 2 -g 10000');
    %alpha = model.sv_coef ./ lv(model.sv_indices);
    %sumAlpha = sum(alpha);
    
    
    ind = (test_label == 0);
    lvt = test_label;
    lvt(ind) = 1;
    lvt(~ind) = -1;
    
    [predicted_label] = libsvmpredict(lvt, test_inst, model);
    
    % 0 1 error
    n = 0;
    row = length(predicted_label);
    for i = 1:row
        if (lvt(i) ~= predicted_label(i)) n = n+1;
    end
    Eout = n / row;

end

