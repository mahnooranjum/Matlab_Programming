clear 
N = 80;

figure, hold on,grid on, rotate3d on

elements = [0 1; 1 0]

for i=1:length(elements)
    for j=1:length(elements)
        for k=1:length(elements) 
            plot3(elements(i,:), elements(j,:), elements(k,:));

        end
    end
end



