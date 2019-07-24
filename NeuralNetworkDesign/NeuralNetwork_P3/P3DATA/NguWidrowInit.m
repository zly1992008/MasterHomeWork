function [Weight1,Weight2] = NguWidrowInit(input_layer_size...
    ,hidden_layer_size...
    ,output_layer_size)
sum_sq_wts = 0;

a = -1;
b = 1;


iw(:,:) = zeros(input_layer_size+1, hidden_layer_size);
for i=1:input_layer_size
    for j=1:hidden_layer_size
        iw(i,j)=(b-a)*rand(1,1) + a;
        sum_sq_wts = sum_sq_wts + (iw(i,j)*iw(i,j));
    end
end

norm = sqrt(sum_sq_wts);
beta = 0.7*hidden_layer_size.^(1/input_layer_size);

for i=1:input_layer_size
    for j=1:hidden_layer_size
        iw(i,j) = beta*iw(i,j)/norm;
    end
end



% WIDROW weights for Hidden Layer 1 to output Layer

sum_sq_wts = 0;

lw(:,:) = zeros(hidden_layer_size+1,output_layer_size);
for i=1:hidden_layer_size
    for j=1:1
        iw(i,j)=(b-a)*rand(1,1) + a;
        sum_sq_wts = sum_sq_wts + iw(i,j)*iw(i,j);
    end
end

norm = sqrt(sum_sq_wts);
beta = 0.7*hidden_layer_size.^(1/input_layer_size);

for i=1:hidden_layer_size
    for j=1:1
        lw(i,j) = beta*lw(i,j)/norm;
    end
end


Weight1=iw';
Weight2=lw';

end

