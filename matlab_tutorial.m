
%Scalars

a=2

a=2; % The ; supresses output

%Vectors

 x= [1;2;3;4;5] %Column Vector
 
 x = [1 2 3 4 5] %Row Vector
 
 x(2)   %access the second component of the vector x
 
 x(3) = 7; %set the third component of x as 7
 x
 
 %Matrices 
 
 A = [1 2 3; 4 5 6; 7 8 9]
 
 A(2,3) = -4;  %Modify the (2,3) element of A
 A
 %Rows are separated by semicolons. The entries in a row are separated by
 %spaces or commans
 
 %Built-in Variables, Functions and Commands
 
 pi  %3.14159
 
 format long %Change the number of digits displayed
 
 pi
 
 format short
 
 %Some useful built-in functions
 
 size(A)    %size of a variable
 
 length(x)  %length of a vector
 
 max(x)     %returns the largest entry of a vector
 
 min(x)     %returns the smallest entry of a vector
 
 sin(a)     %returns sin of our variable a
 
 sin(x)     %returns a vector of sin of entries of x
 
 % Creating matrices and vectors
 
 x1 = 1:5               %Creates a Row Vector whole components increase by 1
 
 x2 = 1:0.5:5           %Creates a Row Vector whole components increase by 0.5

 x3 = 5:-0.5:1          %Creates a Row Vector whole components decrease by 0.5
 
 x4 = linspace(1,5,9)   %Creates a vector from 1 to 5 with equally spaced 9 entries 
 
 A = zeros(3,2)         %Creates a 3x2 matrix of all zeros
 
 A = ones(2,4)         %Creates a 2x4 matrix of all ones
 
 A = eye(3)             %Creates a 3x3 identity matrix
 
 A = diag([1,2,3,4])    %Creates a 4x4 diagonal matrix with the vector [1,2,3,4] in the diagonal
 
 
 %Operations of Vectors and Matrices
 
 A = [1 2; 3 4]         
 
 B = A + A              %Matrix addition
 
 C = A*A                %Matrix multiplication
 
 D = A.*A               %Elementwise multiplication (NOT matrix multiplication)
 
 E = A^3                % E = A*A*A
 
 F = A.^3               % F = [1^3 2^3; 3^3 4^3]
 
 G = inv(A)             %Inverse of A
 
 E = det(A)             %Determinant of A
 
 F = A'                 %Transpose of A
 
 
 %%%Accessing subvectors
 x=0:0.1:1;            
 n=length(x)           
 x2=x(5:10)             % What is x2?
 x2=x([1,3,4,11])       % What is x2?
 x2=x(2:4:11)           % What is x2?
 
 %%%Accessing submatrices
a=[100 90 85; 117 110 108; 84 84 84; 96 90 88]; 
[m,n]=size(x)
a2=a(2,3)               % What is a2?
a2=a(:,2)               % What is a2?
a2=a(2,:)               % What is a2?
a2=a(2:3,:)             % What is a2?
a2=a(2:3,[1,3])         % What is a2?

%%%Graphics
 
%Plot command
x=0:.1:1; 
y =sin(2*pi*x);
plot(x,y);          %The two vectors have to have same dimensions
                    %Use property inspector to change font, add grid lines

%Labeling axis
xlabel('x');
ylabel('y');



%Line type options:
plot(x,y,'-');
plot(x,y,':');
plot(x,y,'--');
plot(x,y,'-.');
      

%Color options: y,m,c,r,g,b,w,k
plot(x,y,'g'); % green line (line is default)  plot(x,y,'r')

%Markeroptions: .,o,x,+,*,s,d,v,^,<,>,p,h(typehelpplot)
plot(x,y,'x'); % blue star (blue is default)

%Using several options together
plot(x,y,'*-r'); % red line with star markers


%Plotting several curves, using hold command
x=0:0.05:1; 
y1=sin(2*pi*x); 
y2=cos(2*pi*x); 
plot(x,y1,'-b')
hold on
plot(x,y2,'--r')

%Now, let's label this above plot. 
xlabel('x');
ylabel('y');
title('The Force Awakens is awesome')
legend('sin(x)', 'cos(x)')
% Again use property inspector to change font size

%Lets save this figure is png and pdf
saveas(gcf,'episode_8.png')
saveas(gcf,'episode_9.pdf')

% gcf is a builtin command to access the "current" figure

close all %closes all the figures

%Other builtin plotting functions: loglog, semilogx, semilogy
%Let's try a loglog or semilog with some of the above examples

%%%%%
% Control Structures
%%%%%

%%
% Note these double % signs at the start of a line create a "section"

% if statement
%   let's run this section

a = rand(1);  %Random value between 0 and 1
if a > 2/3
    disp('a>2/3')  %
elseif a < 1/3
    disp('a<1/3')
else
    disp('1/3 <= a <= 2/3')
end

%built-in function disp displays its argument
disp(['a = ' num2str(a)])


%logical operators: < , > , <= , >=, ==, ~=

%Note: 0 is false, while any non-zero value is considered true
%%

%%%%%%%%
% Loops
%%%%%%%

%for loop
for i = [2,4,6,8]
    disp(i^2);  %i takes values 2, 4, 6, 8
end
%%

a=0;  % Set variables
b=1;
n=10; 
h=(b-a)/n; 
x = zeros(n+1,1);
for i=1:n+1
    x(i)=a + h*(i-1);  % index of x has to be an integer > 0 end
end
x
%%

%for loop to display  a table of values
a=0; % Set variables
b=1;
n=10;  
x = zeros(n+1,1);
for i=1:n+1
    disp(sprintf('%d \t  %6.4f', i, x(i)));
end
%Look at the syntax for using sprintf. Its a useful command!
%%

%while loop
a = 1;
while a <= 10   %while loop repeats as long as the given expression in front of while is true
    disp(a)
    a = a+1;
end

%%

%for loop to compute the sum of all elements of a vector x

x = 1 : 0.1: 10;
n = length(x);
s = 0;
for i = 1 : n
    s = s + x(i);
end
disp(s)
%note that the builtin function sum(x) does the same job

%%

%Nested for loops for matrix operations
n = 10;
for i=1:n
    for j=1:n
        a(i,j) = 1/(i+j-1);
    end
end
a
%%

%%%%%%%%%%
% Functions
%%%%%%%%%%

%We call one of our functions in the following script
x=4;
max_terms = 10; 
z = zeros(max_terms,1);
for n=1:max_terms
    z(n) = ApproxExp(x,n);
end
exact=exp(4); %use builtin function exp
plot(abs(exact-z)); 
xlabel('terms'); 
ylabel('error');

% Try more terms, and a semilog plot
%%
close all

%Now we call another of our functions. Note how the builtin functions are passed as arguments
a=1; 
h=logspace(-1,-16,16);
n=length(h);
err = zeros(n,1);
for i=1:n
    [d(i),err(i)] = MyDeriv(@sin,@cos,a,h(i));
end
loglog(h,err);

%%
close all;

%More function calls, this time using anonymous functions. 
% Note how the syntax changes as compared to builtin functions
h = 0.1;
g = @(x)(x.^2); 
gprime = @(x)(2*x); 
[d,err] = MyDeriv(g,gprime,a,h)
% Try a smaller h

%%

%Now passing functions defined in files as arguments. 
[d,err] = MyDeriv(@f1,@df1,1,.1)

%%

%More examples of functions
x = 0:0.1:pi;
y = my_funky_fcn(x);
plot(x,y)
y2 = sin(x);
hold on;
plot(x,y2);
legend('sin(x)*sin(x)', 'sin(x)');


%Other useful Matlab commands: save, load, clear all   (Google or Bing them)