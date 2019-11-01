%% 2_6
format long
clear all

B = [0 0 1; 0 1 0; 0 0 1; 0 1 0; 0 0 1];
zero = [1 0 1; 0 1 0; 0 1 0; 0 1 0; 1 0 1];
eight = [1 0 1; 0 1 0; 1 0 1; 0 1 0; 1 0 1];

allims = [B zero eight]

x = [1 1 1; 0 1 1; 1 0 1; 1 1 0; 0 0 1];

b_to_w = 0.25;
w_to_b = 0.35;
correctprob = 1-(b_to_w + w_to_b)
probs6 = [0.25, 0.4, 0.35];

for num = 0:2
    %Setting image to correct matrix
    im = allims(1:5, num*3+1:num*3+3)
    
    %Looping over each pixel in both matrices
    for row = 1:5
        for col = 1:3
            impix = im(row,col);
            x_pix = x(row,col);
            
            %Checking if pixel is correct or not
            %and adjusting values accordingly.
            if(impix == 1)   
                if(x_pix == 1)
                    probs6(num+1) = probs6(num+1)*(1-w_to_b)
                else
                    probs6(num+1) = probs6(num+1)*w_to_b
                end
            else
                if(x_pix == 1)
                    probs6(num+1) = probs6(num+1)*b_to_w
                else
                    probs6(num+1) = probs6(num+1)*(1-b_to_w)
                end
            end
        end
    end
end

%Printing out the results
probs6
totprob6 = sum(probs6)
probs_norm = probs6./totprob6%The probabilities of the cases in percentages.
