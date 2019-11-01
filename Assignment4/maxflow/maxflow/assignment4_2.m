%% task 4_2_1
load heart_data.mat

mean_ch = mean(chamber_values)
mean_bg = mean(background_values)
std_ch = std(chamber_values)
std_bg = std(background_values)

%% task 4_2_2
I = im;
imshow(im);
[M, N] = size(I);
n = M*N; %Number of image pixels

mu0 = mean_bg;
mu1 = mean_ch;
lambda = 2; %2 seems like a good value for lambda

Neighbours = edges4connected(M,N);
i=Neighbours(:,1);
j=Neighbours(:,2);

A = sparse(i,j,lambda,n,n);

T = [(I(:)-mu1).^2./(2*std_ch^2) + log(sqrt(2*pi*std_ch^2)), (I(:)-mu0).^2./(2*std_bg^2) + log(sqrt(2*pi*std_bg^2))];
T = sparse(T);

[E, Theta] = maxflow(A,T);
Theta = reshape(Theta,M,N);
Theta = double(Theta);

imshow(Theta);

