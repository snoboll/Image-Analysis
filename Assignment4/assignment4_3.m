%% task 4_3
P1 = [3 2 1 0; 2 2 3 0; 2 2 2 -1];
P2 = [2 4 3 3; 1 2 0 -2; 1 1 3 0];
F = [-3 3 6; 6 -31 9; -8 -42 58];
a1 = [1; 2]; a2 = [16; 10]; a3 = [4; 2];
b1 = [1; 1]; b2 = [3; 2]; b3 = [3; -2];

pointsa = [a1, a2, a3];
pointsb = [b1, b2, b3];
pointsa(3,:)=1;
pointsb(3,:)=1;

for i=1:3
    for j = 1:3
        a = pointsa(:, i);
        b = pointsb(:, j);
        res = b'*F*a;
        if(res == 0)
            a, i, b, j
        end
    end
end
