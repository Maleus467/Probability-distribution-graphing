r1=randn(10000000,1);%Arrays of standard normally distributed numbers
r2=randn(10000000,1);
r3=randn(10000000,1);
r4=randn(10000000,1);
rz1=r1.^2+r2.^2;%Matrice addition of squares of each matching element in 2 arrays
%Graph of chi-squared distribution k=2
[N1,edges] = histcounts(rz1, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N1,'r');%red
xlabel('Observation')
ylabel('Probability Density')
xlim([0 15])
hold on;
rz2=r1.^2+r2.^2+r3.^2;%Matrice addition of squares of each matching element in 3 arrays
%Graph of chi-squared distribution k=3
[N2,edges] = histcounts(rz2, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N2,'g');%green
rz3=r1.^2+r2.^2+r3.^2+r4.^2;%Matrice addition of squares of each matching element in 4 arrays
%Graph of chi-squared distribution k=4
[N3,edges] = histcounts(rz3, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N3,'b');%blue
legend('k=2','k=3','k=4');
hold off
