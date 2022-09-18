r1=randn(10000000,1);%Arrays of normally distributed numbers
r2=randn(10000000,1);
r3=randn(10000000,1);
r4=randn(10000000,1);
%if X~Chi-Squared(k), Y~Chi(k) where Y=sqrt(X)
ra1=r1.^2+r2.^2;%chi-squared k=2
rz1=sqrt(ra1);%chi distribution k=2
%Graph of chidistribution k=2
[N1,edges] = histcounts(rz1, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N1,'r');%red
xlabel('Observation')
ylabel('Probability Density')
xlim([0 5])
hold on;
ra2=(r1.^2+r2.^2+r3.^2);%chi-squared k=3
rz2=sqrt(ra2);%chi distribution k=3
%Graph of chi distribution k=3
[N2,edges] = histcounts(rz2, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N2,'g');%green
ra3=(r1.^2+r2.^2+r3.^2+r4.^2);%chi-squared k=4
rz3=sqrt(ra3);%chi distribution k=4
%Graph of chi distribution k=4
[N3,edges] = histcounts(rz3, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N3,'b');%blue
legend('k=2','k=3','k=4')
hold off
