function [up, error] = imgproj(u, e1, e2, e3, e4)

u_col = u(:);

x1 = dot(u_col, e1(:));
x2 = dot(u_col, e2(:));
x3 = dot(u_col, e3(:));
x4 = dot(u_col, e4(:));

up = x1*e1 + x2*e2 + x3*e3 + x4*e4;
error = norm(u(:) - up(:));

end

