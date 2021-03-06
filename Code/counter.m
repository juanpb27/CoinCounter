function [total, num_50, num_100, num_200, num_500, num_1000, NN, num_total] = counter(rad, centers)
%counter Given the value of the radii and centers of the detected coins,
%the value of each one is determined by means of reference ranges and the
%number of coins and their total value are calculated.

%Reference ranges of radii
rad_50 = [150 195]; rad_100 = [203 227]; rad_200 = [227.01 241.99];
rad_500 = [242 260]; rad_1000 = [270 350];

%Coin values
val_50 = 50; val_100 = 100; val_200 = 200;
val_500 = 500; val_1000 = 1000;

%Count variables
num_50 = 0; num_100 = 0; num_200 = 0; num_500 = 0; num_1000 = 0; NN = 0;
num_total = 0;

for x = 1:numel(rad)
    if( (rad(x) >= rad_50(1)) && (rad(x) <= rad_50(2)) )
        num_50 = num_50 + 1;
        num_total = num_total + 1;
         
        text(centers(x,1), centers(x,2), num2str(val_50), ...
        'Color', 'b', ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'FontSize', 18, ...
        'FontWeight', 'bold');
        
    elseif ( (rad(x) >= rad_100(1)) && (rad(x) <= rad_100(2)) )
        num_100 = num_100 + 1;
        num_total = num_total + 1;
        
        text(centers(x,1), centers(x,2), num2str(val_100), ...
        'Color', 'b', ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'FontSize', 18, ...
        'FontWeight', 'bold');
        
    elseif ( (rad(x) >= rad_200(1)) && (rad(x) <= rad_200(2)) )
        num_200 = num_200 + 1;
        num_total = num_total + 1;
        
        text(centers(x,1), centers(x,2), num2str(val_200), ...
        'Color', 'b', ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'FontSize', 18, ...
        'FontWeight', 'bold');
        
    elseif ( (rad(x) >= rad_500(1)) && (rad(x) <= rad_500(2)) )
        num_500 = num_500 + 1;
        num_total = num_total + 1;
        
        text(centers(x,1), centers(x,2), num2str(val_500), ...
        'Color', 'b', ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'FontSize', 18, ...
        'FontWeight', 'bold');
        
    elseif ( (rad(x) >= rad_1000(1)) && (rad(x) <= rad_1000(2)) )
        num_1000 = num_1000 + 1;
        num_total = num_total + 1;
        
        text(centers(x,1), centers(x,2), num2str(val_1000), ...
        'Color', 'b', ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'FontSize', 18, ...
        'FontWeight', 'bold');
   
    else
        NN = NN+1;
        num_total = num_total + 1;
        
        text(centers(x,1), centers(x,2),'NN', ...
        'Color', 'b', ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle', ...
        'FontSize', 18, ...
        'FontWeight', 'bold');
    end
end
   
 hold off
 total =(val_50*num_50) + (val_100*num_100) + (val_200*num_200) + (val_500*num_500) + (val_1000*num_1000);
 title(strcat('Cuenta total: $', num2str(total), ' pesos colombianos'))
end
