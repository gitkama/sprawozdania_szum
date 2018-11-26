%% Mam dostęp do Arduino i innych elementów jak potencjometr, dlatego zrobiłem sprawozdanie
% w oparciu o wejście analogowe

while(1)
    dial = rossubscriber('/chatter');
    dial_info = receive(dial);
    plot(dial_info.Data,'x')
end
