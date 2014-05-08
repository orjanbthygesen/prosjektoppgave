function result_array = koko(n)

max_k = 3;
delta_k = 0.025;
max_x_value = n;
percent_of_max_value = max_x_value*0.2;
num_of_k_values = (max_k/delta_k);

integral_for_K_array = zeros(1,num_of_k_values)';
integral_for_K_array_full = zeros(1,num_of_k_values)';
percent = zeros(1,num_of_k_values)';

k_array = (delta_k:delta_k:max_k)';

    for i=1:num_of_k_values,
        k = k_array(i);
        fun = @(x,K) x.^(-K);
        integral_for_K_array(i) = integral(@(x)fun(x,k),1,percent_of_max_value);
        integral_for_K_array_full(i) = integral(@(x)fun(x,k),1,max_x_value);
        percent(i) = ((integral_for_K_array(i)/integral_for_K_array_full(i))*100)';

    end
    
    
    result_array = horzcat(k_array, percent);
    
end


