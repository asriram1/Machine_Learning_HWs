n = 5;
for p = 1:200
    %generate data
    X = 2*rand(n,p)-1;
    %find nearest neighbor to origin in ell_infty
    [mind5(p),i] = min(max(abs(X')));
end

n = 50;
for p = 1:200
    %generate data
    X = 2*rand(n,p)-1;
    %find nearest neighbor to origin in ell_infty
    [mind50(p),i] = min(max(abs(X')));
end

n = 500;
for p = 1:200
    %generate data
    X = 2*rand(n,p)-1;
    %find nearest neighbor to origin in ell_infty
    [mind500(p),i] = min(max(abs(X')));
end

pval = [1:200];
yval5 = (1 - (.5).^(1/5)).^(1./pval);
yval50 = (1 - (.5).^(1/50)).^(1./pval);
yval500 = (1 - (.5)^(1/500)).^(1./pval);

plot(pval,yval5,'g-')
hold
scatter([1:200],mind5,'g+')
plot(pval,yval50,'r-')
scatter([1:200],mind50,'ro')
plot(pval,yval500,'b-')
scatter([1:200],mind500,'bd')
legend('n=5 curve','nearest neighbors for n=5','n=50 curve', 'nearest neighbors for n=50', 'n=500 curve', 'nearest neighbors for n=500')
xlabel('p')
ylabel('nearest neighbor distance')