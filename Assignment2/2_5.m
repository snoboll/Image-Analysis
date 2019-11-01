%% assignment 2_5
format long

error = 0.2;
out_im = [0 1 1 1; 1 0 1 1; 1 1 0 1; 1 0 1 1];

probs5 = [0.3 0.2 0.2 0.3]%a priori probs

for num = 1:4
    im = ones(4,4);
    im(1:4, num) = zeros(4,1);
        
    for row = 1:4
        for col = 1:4
            impix = im(row,col);
            outpix = out_im(row,col);
            if(impix ~= outpix);
                probs5(num) = probs5(num)*error; 
            else
                probs5(num) = probs5(num)*(1-error);
            end
        end
    end
end
probs5
totprob5 = sum(probs5)
post_probs_norm = probs5./totprob5%The probabilities of the 4 cases in percentages.
%the second line is the most probable with 86%