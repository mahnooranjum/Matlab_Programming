clear 
figure(1), clf

dim = 5

mat = zeros(dim);
name = "Zeros";
subplot(231);
imagesc(mat);
axis square, title(name)



mat = randn(dim);
name = "RandomN";
subplot(232);
imagesc(mat);
axis square, title(name)


mat = hilb(dim);
name = "Hilbert";
subplot(233);
imagesc(mat);
axis square, title(name)

mat = M20200404_checkerboard(dim);
name = "Checkered";
subplot(234);
imagesc(mat);
axis square, title(name)

dim=100
mat = zeros(dim);
name = "Upper triangle";
for i=1:dim
    for j=1:dim
        if i<j
            mat(i,j) = 1.03^sqrt(i*j);
        end
    end
end

subplot(235);
imagesc(mat);
axis square, title(name)


mat = zeros(dim);
name = "Upper + Lower";
for i=1:dim
    for j=1:dim
        if i<j
            mat(i,j) = 1.01^sqrt(i*j);
        else
            mat(i,j) = 1.01^dim - 1.01^sqrt(i*j);
        end
    end
end

subplot(236);
imagesc(mat);
axis square, title(name)

