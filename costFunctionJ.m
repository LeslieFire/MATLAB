function J = costFunctionJ(X, y, theta)
% X i s the "de s ign matrix " c ont a ining our t r a i n i n g examples .
% y i s the c l a s s l a b e l s

m = size(X, 1);
prediction = X * theta;
sqrErrors = (predictions - y) .^2;

J = 1/(2*m) * sum(sqrErrors);

end