r1=1+randn(10000000,1);%Arrays of normally distributed numbers mean=1
r2=1+randn(10000000,1);%mean=1
r3=2+randn(10000000,1);%mean=2
r4=2+randn(10000000,1);%mean=2
%lambda is non-centrality parameter, lambda=(mean1^2+mean2^2...+meank^2)
rz1=r1.^2+r2.^2;%Non-centralised chi -squared(k=2)
%Graph of non-centralised chi-squared distribution k=2, lambda=2
[N1,edges] = histcounts(rz1, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N1,'r');%red
xlabel('Observation')
ylabel('Probability Density')
xlim([0 30])
hold on;
rz2=r1.^2+r2.^2+r3.^2;%Non-centralised chi -squared(k=3)
%Graph of non-centralised chi-squared distribution k=3, lambda=6
[N2,edges] = histcounts(rz2, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N2,'g');%green
rz3=r1.^2+r2.^2+r3.^2+r4.^2;%Non-centralised chi -squared(k=4)
%Graph of non-centralised chi-squared distribution k=4, lambda=10
[N3,edges] = histcounts(rz3, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N3,'b');%blue
legend('k=2 λ=2','k=3 λ=6','k=4 λ=10')
hold off