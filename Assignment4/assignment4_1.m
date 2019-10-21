%% task 4.1'
load femfel.mat
im1 = femfel1;%cleaning up noise
im2 = femfel2;

diff = abs(im1-im2);%getting differences
diff = max(diff, [], 3);

im = imgaussfilt(diff, 7) > 60;

merge = strel('diamond', 40);
merge_res = imclose(im, merge);

stats = regionprops(merge_res ,'Area', 'BoundingBox');

figure(1)
imshow(femfel2);
hold on
for i = 1:5
    rectangle('Position', stats(i).BoundingBox, 'EdgeColor', 'r', 'LineWidth', 4);
end
figure(2)
imshow(femfel1);