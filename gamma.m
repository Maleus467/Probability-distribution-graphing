r1=randn(10000000,1);%Arrays of standard normally distributed numbers
r2=randn(10000000,1);
r3=randn(10000000,1);
r4=randn(10000000,1);
r5=randn(10000000,1);
r6=randn(10000000,1);
%if Q ~ χ2(ν) and c is a positive constant, then cQ ~ Gamma(ν/2, 2c).
%scale-factor(θ) is 2c, shape factor(k) is v/2
ra1=r1.^2+r2.^2+r3.^2+r4.^2+r5.^2+r6.^2;%Q, v=6
c1=1;%θ=2
rz1=ra1.*c1;%cQ, k=3
%plot of shape factor 3, scale factor 2
[N1,edges] = histcounts(rz1, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N1,'r');%red
xlabel('Observation')
ylabel('Probability Density')
xlim([0 15])
hold on;
ra2=r1.^2+r2.^2+r3.^2+r4.^2;%Q, v=4
c2=1;%θ=2
rz2=ra2.*c2;%cQ, k=2
%plot of shape factor 2, scale factor 2
[N2,edges] = histcounts(rz2, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N2,'g');%green
ra3=r1.^2+r2.^2;%Q, v=2
c3=1;%θ=2
rz3=ra3.*c3;%cQ, k=1
%plot of shape factor 1, scale factor 2
[N3,edges] = histcounts(rz3, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N3,'b');%blue
legend('k=3 θ=2','k=2 θ=2','k=1 θ=2')
hold off