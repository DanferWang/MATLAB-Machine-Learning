x = linspace(-2, 2);
y_sigmoid = activation('sigmoid', x, 1);
y_tanh = activation('tanh', x, 1); 
y_elo = activation('elo', x, 1);
plot(x, y_sigmoid, x, y_tanh, x, y_elo);