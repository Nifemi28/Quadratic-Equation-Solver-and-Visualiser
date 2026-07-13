% this script solves the quadratic equation and plots the graph of it,
% highlighting the roots.
clear
clc

% display clear instructions to the user

disp('Welcome to the Quadratic Equation Solver');
disp('The equation is in the form: y = ax^2 + bx + c');

% ask user for inputs for the values of a, b and c for the quadratic eq

a = input('Please input a value for "a"');

while a<0 || a==0 || isnan(a) || ~isreal(a) || isinf(a)
    % error messages
    if a<0 % if a is negative
        disp('"a" must be positive');
    elseif a==0 % if a is zero
        disp('zero is not an appropriate value');
    elseif isnan(a) % anything other than a number e.g a letter
        disp('"a" must be a number');
    elseif ~isreal(a) % if the value is a complex number 
        disp('"a" must be real');
    elseif isinf(a) % if the value is infinity
        disp('"a" must be finite');
    end
    a = input('Please input a value for "a" again.'); % asking for the value again
end
disp('The value for "a" is valid!');

     
b = input('Please input a value for "b"');

while b<0 || b==0 || isnan(b) || ~isreal(b) || isinf(b)
    if b<0 
        disp('"b" must be positive');
    elseif b==0 
        disp('zero is not an appropriate value');
    elseif isnan(b)
        disp('"b" must be a number');
    elseif ~isreal(b)
        disp('"b" must be real');
    elseif isinf(b)
        disp('"b" must be finite');
    end
    b = input('Please input a value for "b" again.');
end
disp('The value for "b" is valid!');
 

c = input('Please input a value for "c"');

while c<0 || c==0 || isnan(c) || ~isreal(c) || isinf(c)
    if c<0 
        disp('"c" must be positive');
    elseif c==0 
        disp('zero is not an appropriate value');
    elseif isnan(c)
        disp('"c" must be a number');
    elseif ~isreal(c)
        disp('"c" must be real');
    elseif isinf(c)
        disp('"c" must be finite');
    end
    c = input('Please input a value for "c" again.');
end
disp('The value for "c" is valid!');
     
% calculate the discriminat and determine the number and type of roots
D = b^2 - 4*a*c;
if D > 0 
    noOfRoots = 2;
    disp('2 real roots');
elseif D==0
    noOfRoots = 1;
    disp('1 real root');
else 
    noOfRoots = 0;
    disp('no real roots');
end
% give root information to the user
fprintf('The quadratic euqation has %d %s. \n',noOfRoots);

% calc roots 
if noOfRoots == 2
    root1 = (-b + sqrt(D)) / (2*a);
    root2 = (-b - sqrt(D)) / (2*a);
    fprintf('root 1: %.2f\n', root1);
    fprintf('root2: %.2f\n', root2);
elseif noOfRoots == 1
    root1 = (-b / (2*a));
    fprintf('repeated root: %.2f\n', root1);
end

% graph plotting
xRange = linspace(-10,10,400); %!!!!!!!come back to this!!!!!!
yValues = (a*xRange.^2 + b*xRange + c); % calculate y values
plot(xRange, yValues, 'b-', 'LineWidth',2); % plot curve
hold on; % keep current plot

% highlight roots on curve
if noOfRoots == 2
    plot(root1, 0, 'ro','MarkerSize',8, 'DisplayName','Root 1');
    plot(root2,0,'ro','MarkerSize',8, 'DisplayName','Root 2');
elseif noOfRoots == 1
    plot(root1,0,'ro','MarkerSize',8, 'DisplayName','repeated root');
end

xlabel('x-axis');
ylabel('y-axis');
title('Mini Project: Quadratic Equation Solver');
legend('y = ax^2 + bx + c','Location','best');
grid on; % add grid
hold off; % stop plot hold

disp('Thanks for using the Quadratic Equation Solver!');