function [S] = im2segment(im)
    % [S] = im2segment(im)

    %invert image with a threshold of 140 to filter out gray areas and
    %get white text on black background. 140 was tested to result in optimal
    %Jaccard scores.
    inv_im = im < 140;

    %using bwlabel to segment image, separating the letters into nrsg segments.
    [L, nrsg] = bwlabel(inv_im);

    %Looping over the found segments and setting each pixel in S to
    %1 if the corresponding pixel in L is matching the current kk, 0 otherwise.
    for kk = 1:nrsg
        S{kk} = L == kk;
    end
end