xrange=-5:0.01:5;
x=sin(10*xrange);
yrange=2*pi/(xrange(end)-xrange(1))*((0:length(xrange)-1)-(length(xrange)-1)/2);
plot(yrange,fftshift(abs(fft(x)).^2));
findpeaks(fftshift(abs(fft(x)).^2))