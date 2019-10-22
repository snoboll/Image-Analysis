%% test

A = [1 1 1; 0 0 1; 0 0 0]

colsum = sum(A, 1)
rowsum = sum(A, 2)

startcol = find(colsum, 1);
endcol = find(colsum, 1, 'last');
startrow = find(rowsum, 1);
endrow = find(rowsum, 1, 'last');