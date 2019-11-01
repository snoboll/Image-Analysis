%% section0
A = [0.5 1; 1 0.5]
norm(A)

%% setcion1
fi1 = (1/3).*[0 1 0; 1 1 1; 1 0 1; 1 1 1];
fi2 = (1/3).*[1 1 1; 1 0 1; -1 -1 -1; 0 -1 0];
fi3 = (1/2).*[1 0 -1; 1 0 -1; 0 0 0; 0 0 0];
fi4 = (1/2).*[0 0 0; 0 0 0; 1 0 -1; 1 0 -1];

dot(fi1(:), fi2(:))
dot(fi1(:), fi3(:))
dot(fi1(:), fi4(:))
dot(fi2(:), fi3(:))
dot(fi2(:), fi4(:))
dot(fi3(:), fi4(:))

%% section2
f = [-2 6 3; 13 7 5; 7 1 8; -3 4 4];
f_stack = f(:);

x1 = dot(f_stack, fi1(:));
x2 = dot(f_stack, fi2(:));
x3 = dot(f_stack, fi3(:));
x4 = dot(f_stack, fi4(:));

f_pro = x1*fi1 + x2*fi2 + x3*fi3 + x4*fi4

diff_mat = f_pro-f
norm = norm(f_pro-f)


