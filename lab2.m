while(1)
    dial = rossubscriber('/chatter');
    dial_info = receive(dial);
    plot(dial_info.Data,'x')
end