%% task 4_2_1
load heart_data.mat

mean_ch = mean(chamber_values)
mean_bg = mean(background_values)
std_ch = std(chamber_values)
std_bg = std(background_values)

%% task 4_2_2
I = im;
[M, N] = size(I);
n = M*N; %Number of image pixels

mu0 = mean_bg;
mu1 = mean_ch;
lambda = 2;%2 seems like a good value for lambda

Neighbors = edges4connected(M,N);
i=Neighbors(:,1);
j=Neighbors(:,2);

A = sparse(i,j,lambda,n,n);

T = [-log(normpdf(im(:), mu0, std_bg)), -log(normpdf(im(:), mu1, std_ch))];
T = sparse(T);

[E, Theta] = maxflow(A,T);
Theta = reshape(Theta,M,N);
Theta = double(Theta);

imshow(Theta);

