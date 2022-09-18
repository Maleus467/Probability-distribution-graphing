r1=randn(10000000,1);%Arrays of standard normally distributed numbers(mean=0,sigma=1)
r2=randn(10000000,1);
%R~Rice when R=sqrt(x^2+y^2) where X~N(vcosθ,sigma^2) Y~N(vsinθ,sigma^2)
%θ is any real number
%shape factor = v^2/(2sigma^2), here sigma=1
a=rand(1,1);%random number generator(θ)
v=0;%shape factor variable1
ra=r1+v*cos(a);%statistically independent normal random variable array 1(mean=vcosa,sigma=1)
rb=r2+v*sin(a);%statistically independent normal random variable array 2(mean=vsina,sigma=1)
rz=sqrt(ra.^2+rb.^2);%rice distribution shape factor 0
%graph of rice distribution shape parameter 0
[N,edges] = histcounts(rz, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N,'r')%red
xlabel('Observation')
ylabel('Probability Density')
xlim([0 8])
hold on;
v1=2;%shape factor variable2
ra1=r1+v1*cos(a);%statistically independent normal random variable array 1(mean=v1cosa,sigma=1)
rb1=r2+v1*sin(a);%statistically independent normal random variable array 2(mean=v1sina,sigma=1)
rz1=sqrt(ra1.^2+rb1.^2);%rice distribution shape factor 2
%graph of rice distribution shape parameter 2
[N1,edges] = histcounts(rz1, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N1,'g')%green
v2=4;%shape factor variable3
ra2=r1+v2*cos(a);%statistically independent normal random variable array 1(mean=v2cosa,sigma=1)
rb2=r2+v2*sin(a);%statistically independent normal random variable array 2(mean=v2sina,sigma=1)
rz2=sqrt(ra2.^2+rb2.^2);%rice distribution shape parameter 8
%graph of rice distribution shape parameter 8
[N2,edges] = histcounts(rz2, 'Normalization','pdf');
edges = edges(2:end) - (edges(2)-edges(1))/2;
plot(edges, N2,'b')%blue
legend('shape parameter=0','shape parameter=2','shape parameter=8')
hold off