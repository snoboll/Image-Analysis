function y = features2class(x, classification_data)
    X = classification_data{1};
    Y = classification_data{2};
    [value, index] = min(vecnorm(X-x));
    y = Y(index);
end