function [label]= cifar_10_rand(x)
n = length (x);
y = randi([0,9],n,1);
end