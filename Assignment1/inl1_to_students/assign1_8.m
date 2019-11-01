%% section1
load('assignment1bases.mat');

e1 = bases{1}(:,:,1);
e2 = bases{1}(:,:,2);
e3 = bases{1}(:,:,3);
e4 = bases{1}(:,:,4);
base1 = [e1, e2, e3, e4];

f1 = bases{2}(:,:,1);
f2 = bases{2}(:,:,2);
f3 = bases{2}(:,:,3);
f4 = bases{2}(:,:,4);
base2 = [f1, f2, f3, f4];

g1 = bases{3}(:,:,1);
g2 = bases{3}(:,:,2);
g3 = bases{3}(:,:,3);
g4 = bases{3}(:,:,4);
base3 = [g1, g2, g3, g4];


for c = 1:2
    means = [0, 0, 0]
    for i = 1:400
        img = stacks{c}(:,:,i);
        
        [i_e, e_e] = imgproj(img, e1, e2, e3, e4);
        [i_f, e_f] = imgproj(img, f1, f2, f3, f4);
        [i_g, e_g] = imgproj(img, g1, g2, g3, g4);
        
        means = means + [e_e, e_f, e_g]
   Screenshot from 2019-10-16 15-37-48
    end
    means = means./400;
    
    if c == 1
        meanstack1 = means;
    
    else
        meanstack2 = means;
    end
    
end

meanstack1
meanstack2
    
%% section test
figure(1);
base1 = bases{2};
imgtest = base1(:,:,1);
colormap('gray');
imagesc(imgtest)


