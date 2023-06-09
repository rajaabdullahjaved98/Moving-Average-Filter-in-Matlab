t=0:250;
[m,n]=size(t);

a=sin(2*pi*0.03*t);
b=sin(2*pi*0.35*t);
c=a+b;

out= zeros(m,n);


for i = 2:(n-1)
    out(i) = (c(i-1) + c(i) + c(i+1))/3;
end

subplot(221);
plot(t,a); title('Low Frequency Signal');
subplot(222);
plot(t,b); title('High Frequency Signal');
subplot(223);
plot(t,c); title('Noise Signal');
subplot(224);
plot(t,out); title('Filtered Signal');