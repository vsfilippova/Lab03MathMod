model Lab03MathMod
//Вариант 55

//В начальный момент:
parameter Real x0 = 65300;
parameter Real y0 = 55500;

//Коэффициенты модели(1) боевых действий между регулярными войсками
parameter Real a1 = 0.67;
parameter Real b1 = 0.54;
parameter Real c1 = 0.491;
parameter Real h1 = 0.37;

//Коэффициенты модели(2)ведения боевых действий  с  участием  регулярных  войск  и партизанских отрядов 
parameter Real a2 = 0.278;
parameter Real b2 = 0.701;
parameter Real c2 = 0.502;
parameter Real h2 = 0.188;

Real x1 (start = x0);
Real y1 (start = y0);

Real x2 (start = x0);
Real y2 (start = y0);

equation
// Модель 1
der(x1) = -a1*x1 - b1*y1 +sin(5 * time) + 1;
der(y1) = -c1*x1 - h1*y1 +cos(5 * time) + 1;
// Модель 2
der(x2) = -a2*x2 - b2*y2 + abs(sin(2 * time));
der(y2) = -c2*x2*y2 - h2*y2 + abs(cos(12 * time));

end Lab03MathMod;
