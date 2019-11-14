rng(1);
pts = 500;
mini = [1:200];
xval = linspace(1,200, 200);
for j = 1:200
    n = j;
    v = [1:pts];
    X = randn(pts,n);
    result = -1 + 2.*(X - min(X))./(max(X) - min(X));
    Y = zeros(1,n);
    for i = 1:pts
        v(i) = max(abs(result(i,1:n) - Y)); 
    end
    mini(j) = min(v);

%h(1) = plot(result(:,1),result(:,2),'bx');
end
for i =  1:200
    disp(mini(i));
end
y = [1:200];
for i = 1:200
    y(i)= (1-(1/2)^(1/pts))^(1/i);
     
end 
scatter(xval,mini);
hold on;
plot(xval, y);   
title('Nearest Neighbour for N = 500')
xlabel('Dimension')
ylabel('Nearest Neighbour Distance')
    