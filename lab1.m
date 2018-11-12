% Na poczatku nalezy odpalic ROS'a, stworzyc symulacje zolwia (sterowanie
% oraz wizualizacje), dzieki czemu powstanie topic. Nastepnie mozna dzialac
% w matlab

ros init;

while(1)
    turtle = rossubscriber('/turtle1/pose');
    move_info = receive(turtle);
    x = move_info.X;
    y = move_info.Y;
    plot(x,y,'x')
    axis([0 12 0 12])  %zakres ukladu wspolrzednych, zeby plot nie skalowal sie automatycznie
end
