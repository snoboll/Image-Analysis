%% 2_3
format short
data1 = [0.4003, 0.3988, 0.3998, 0.3997, 0.4010, 0.3995, 0.3991];
data2 = [0.2554, 0.3139, 0.2627, 0.3802, 0.3287, 0.3160, 0.2924];
data3 = [0.5632, 0.7687, 0.0524, 0.7586, 0.4243, 0.5005, 0.6769];

m1 = 0.4;m2 = 0.3;m3 = 0.5;sig1 = 0.01;sig2 = 0.05;sig3 = 0.2;

[val1, class1] = max([normpdf(data1, m1, sig1); 
normpdf(data1, m2, sig2); normpdf(data1, m3, sig3)])

[val2, class2] = max([normpdf(data2, m1, sig1); 
normpdf(data2, m2, sig2); normpdf(data2, m3, sig3)])

[val3, class3] = max([normpdf(data3, m1, sig1); 
normpdf(data3, m2, sig2); normpdf(data3, m3, sig3)])


