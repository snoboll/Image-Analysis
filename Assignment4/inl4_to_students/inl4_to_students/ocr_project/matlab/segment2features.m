function features = segment2features(B)
     colsum = sum(B);
     rowsum = sum(B, 2);
     totpxl = sum(colsum);

     startcol = find(colsum, 1);
     endcol = find(colsum, 1, 'last');
     startrow = find(rowsum, 1);
     endrow = find(rowsum, 1, 'last');
     area = ((endcol-startcol)*(endrow-startrow));

     half_col = ceil((startcol+endcol)/2);
     third_col = ceil((startcol+endcol)/3);
     third_row = ceil((startrow+endrow)/3);
     two_third_row = 2*third_row;
     
     %6 squares
     topleftsum = sum(sum(B(startrow:third_row, startcol:half_col)));
     midleftsum = sum(sum(B(third_row:two_third_row, startcol:half_col)));
     botleftsum = sum(sum(B(two_third_row:endrow, startcol:half_col)));
     toprightsum = sum(sum(B(startrow:third_row, half_col:endcol)));
     midrightsum = sum(sum(B(third_row:two_third_row, half_col:endcol)));    
     botrightsum = sum(sum(B(two_third_row:endrow, half_col:endcol)));
     
     pxl_per_area = totpxl/area;

     features = 1000*[pxl_per_area, topleftsum, midleftsum, botleftsum, toprightsum, midrightsum, botrightsum]./totpxl;
end