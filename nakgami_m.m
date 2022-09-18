r1=randn(10000000,1);%Arrays of standard normally distributed numbers
r2=randn(10000000,1);
r3=randn(10000000,1);
r4=randn(10000000,1);
r5=randn(10000000,1);
r6=randn(10000000,1);
%if a random variable Y∼Gamma(k,θ) and X∼Nakagami(m,Ω) m=k, Ω=mθ
%then x=sqrt(y)
ra1=r1.^2+r2.^2+r3.^2+r4.^2+r5.^2+r6.^2;%chi-square k=6
c1=1/6;
rb1=ra1.*c1;%Gamma k=3, θ=2c
rz1=sqrt(rb1);%Nakagami m=3, Ω=6c
%plot of shape factor 3
[N1,edges] = histcounts(rz1, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N1,'r');%red
xlabel('Observation')
ylabel('Probability Density')
xlim([0 3])
%ylim([0 2])
hold on;
ra2=r1.^2+r2.^2+r3.^2+r4.^2;%chi-square k=4
c2=1/4;
rb2=ra2.*c2;%Gamma k=2, θ=2c
rz2=sqrt(rb2);%Nakagami m=2, Ω=4c
%plot of shape factor 2
[N2,edges] = histcounts(rz2, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N2,'g');%green
ra3=r1.^2+r2.^2;%chi-square k=2
c3=1/2;
rb3=ra3.*c3;%Gamma k=1, θ=2c
rz3=sqrt(rb3);%Nakagami m=1, Ω=2c
%plot of shape factor 1
[N3,edges] = histcounts(rz3, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N3,'b');%blue
legend('m=3, Ω=1','m=2, Ω=1','m=1, Ω=1')
hold off