%% testing segment2features

seg = im2segment(im1);
letter = seg{1}

segment2features(letter)

%% test

A = [1 2 3; 4 5 6; 7 8 9]
sum(A,2)

A(1:3, 1:2)

c = [1 2 3]
b = c(2)

sum(sum(A(1:2, 2:3)))