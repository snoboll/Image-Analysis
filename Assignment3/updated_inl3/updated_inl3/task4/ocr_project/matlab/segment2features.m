function features = segment2features(B)
    [totrow, totcol] = size(B);
   
    colsums = sum(B);
    pxlcnt = sum(colsums);
   
    half = ceil(totrow/2);
    third = ceil(totrow/3);
    [startrow, startcol] = find(B, 1);
    [endrow, endcol] = find(B, 1, 'last');
    midcol = ceil((startcol+endcol)/2);
   
    topleftsum = sum(sum(B(1:third, 1:midcol)));
    midleftsum = sum(sum(B(third-1:totrow-third, 1:midcol)));
    botleftsum = sum(sum(B(totrow-third:totrow, 1:midcol)));
    toprightsum = sum(sum(B(1:third, midcol:totcol)));
    midrightsum = sum(sum(B(third-1:totrow-third, midcol:totcol)));
    botrightsum = sum(sum(B(totrow-third:totrow, midcol:totcol)));
   
    %topsum = topleftsum + toprightsum;
    tophalfsum = sum(sum(B(1:half, 1:totcol)));
    %botsum = botleftsum + botrightsum;
    bothalfsum = sum(sum(B(half-1:totrow, 1:totcol)));
 
    leftsum = topleftsum+midleftsum+botleftsum;
    rightsum = toprightsum+midrightsum+botrightsum;
   
features = [pxlcnt, tophalfsum, bothalfsum, leftsum, rightsum, botleftsum];
end