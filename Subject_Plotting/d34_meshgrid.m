clear 
u1 = [0,0];
u2 = [3,3];
u3 = [0,4];
sigma1 = [1,0.2;0.2,1];
sigma2 = [1,0;0,2];
sigma3 = [0.1,0;0,0.1];
weights = [0.2, 0.4, 0.4];
combinedu = [u1;u2;u3];
combinedsigma=cat(3,sigma1,sigma2,sigma3);
gmmodel = gmdistribution(combinedu, combinedsigma, weights);
X = random(gmmodel,1000);


x = X(:,1);
y = X(:,2);
[pdfx xi]= ksdensity(x);
[pdfy yi]= ksdensity(y);
[xxi,yyi]     = meshgrid(xi,yi);
[pdfxx,pdfyy] = meshgrid(pdfx,pdfy);
pdfxy = pdfxx.*pdfyy; 
mesh(xxi,yyi,pdfxy)
set(gca,'XLim',[min(xi) max(xi)])
set(gca,'YLim',[min(yi) max(yi)])
