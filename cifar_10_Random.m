function [label] = cifar_10_Random(y,trdata,labels)
neigh_dist = sum(((trdata - y(1,:)).^2),2);
% sq = neigh_dist.^2;
% final = sum(sq,2);
[M,I] = min(neigh_dist);
label = labels(I);
