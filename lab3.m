%% Program symulujący jazdę robota po okręgu

A = [];
R = 12;
L = 8;
w1 = 2;
w2 = 2.1;
x = 0;
y = 0;
theta = 10;

V = (R*(w1+w2))/2;
w = ((w1-w2)*R/L);

for i=1:1:300
    x = x + ((R*(w1+w2)*cos(theta))/2);
    y = y + (R*(w1+w2)*sin(theta)/2);
    theta = theta + ((R*(w1-w2))/L);
    A(i,:) = [x y theta];
    drawnow;
    xlim([-100;350])
    ylim([-300;100])
    plot(y,x,'h')
    hold on
end
