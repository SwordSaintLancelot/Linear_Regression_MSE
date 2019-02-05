test_num = 300
resl_dat = zeros(test_num,1);
act_dat = zeros(test_num,1);
% for j = 2:2:16
%     fprintf('value of power is %d', j);
tic
for i = 1:test_num
    resl_dat(i) = cifar_10_1NN(te_data(i,:),tr_data,tr_labels);
    act_dat(i) = labels(i);
end
for i = 1:test_num
    resl_dat(i) = cifar_10_Random(te_data(i,:),tr_data,tr_labels);
    act_dat(i) = labels(i);
end

toc
%disp(resl_dat);
%g = te_labels(1:test_num,:)
cifar_10_evaluate(resl_dat,act_dat);
% end